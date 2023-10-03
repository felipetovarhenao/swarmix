include swarmix.sco

sr = 44100
outchans = 2
rtsetparams(sr, outchans)
control_rate(sr)
srand()
load("WAVETABLE")
tblsize = 2000

rec = 0
if (rec) {
    set_option("clobber=yes", "play=no")
    rtoutput("./waves.aif", "24")
}

st = 0

ics = {2, 4, 5, 7}
icindex = 0
for (v = 1; v <= len(ics); v += 1) {
    pitches = icgen({ics[icindex]}, 36, 92)
    icindex += 1
    icindex = icindex % len(ics)
    numnotes = len(pitches)
    offset = trand(numnotes)
    st = irand(0, 0.3)
    for (i = 0; i < 30; i += 1) {
        index = numnotes - (i+offset)%numnotes
        fq = cpsmidi(pitches[index])
        for (x = 0; x < 3; x += 1) {
            dur = irand(2.7,3.2)
            amp = cos(remap(index, 0, numnotes, 0, PI*2))
            amp = remap(amp, -1, 1, 1, 0) * 4000
            waves = {"sine"}
            wv = maketable("wave", tblsize, waves[trand(len(waves))] + trand(1,20))
            env = maketable("curve", "nonorm", tblsize, 0,0,2, 19,1,-1, 20,0.7,-3, pickrand(30, 100, 800),0)
            pan = maketable("line", "nonorm", tblsize, 0,random(), 1, random(), 2, random())
            WAVETABLE(st + irand(0, 0.2), dur, amp*env,fq + irand(-2, 2), pan, wv)
        }
        st += irand(0.4, 3.3)
    }
}