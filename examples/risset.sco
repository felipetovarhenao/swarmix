sf = s_arg(0)

if (!sf) {
	printf("\n\nERROR:\nYou must provide a path to an audio soundfile:\n\tcmix <sound.wav> < risset.sco\n\n\n")
	exit()
}

include swarmix.sco

sr = 48000
outchans = 2
rtsetparams(sr, outchans)
control_rate(sr)
srand()
load("SCRUB")
load("STEREO")
tblsize = 1000

rtinput(sf) // load sample

env = maketable("curve", "nonorm", tblsize = 3000, 0,1,1, 1,1,2, 99,1,-2, 100,0)

master = 0.1
insk = 0 // inskip
numv = 5 // number of voices
minbar = 4 // lowest number of repetitions on metabar 
scl = 2.5 // duration scalar
metabar = minbar * scl //minbar // metabar duration
bars = 5 // number of metabars

mode = 1 // 0: rallentando; 1: accelerando

phasemode = 1 // traverse through inskip in slow increments
phasesize = 0.1 // increment amount for each metabar

pitchshift = 1 // scrub or stereo

tdist = 0 // onset distortion

for (v = 0; v < numv; v += 1) {
    phase = 0
    timeList = rissOnsets(minbar, metabar, v) // get time points
    rateList = rissRates(minbar, timeList, v) // rate must be derived first
    ampList = rissAmps(minbar, numv, v) // get amplitudes
    durList = x2dx(timeList) // get durations from time points (delta)

    if (!mode) {
        rateList = rev(rateList) // reverse rates
        ampList = rev(ampList) // reverse amplitudes
        durList = rev(durList) // reverse durations
        timeList = dx2x(durList) // get new onsets from durations
    }

    pan = v/numv // pan each voice differenty throughout

    for (b = 0; b < bars; b += 1) { // iterate metabar
        for (i = 0; i < len(durList); i += 1) { // play each note/grain
            st = timeList[i]
            dur = durList[i]
            rate = rateList[i]
            amp = ampList[i]
            if (pitchshift) {   

                bus_config("SCRUB", "in0", "aux 0 out")
                bus_config("STEREO", "aux 0 in", "out 0-1")

                temp_st = max(0, st + (metabar*b) + irand(-tdist, tdist))

                SCRUB(temp_st, insk + (phase*rate), dur, amp * env * master, rate, 64, 32, 0)
                STEREO(temp_st, 0, dur, 1, pan)

            } else {
                STEREO(max(0, st + (metabar*b) + irand(-tdist, tdist)), insk + phase, dur, amp * env * master, pan)
            }
            if (phasemode) {
                if (insk < DUR() - dur) {
                    phase += (phasesize / (pow(2,v) * minbar)) // slow inskip phasing
                }
            }
        }
    }
}

// pipe output to stereo

