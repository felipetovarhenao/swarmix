include xcmix

sr = 44100
outchans = 2
rtsetparams(sr, outchans)
control_rate(sr)
srand()
load("WAVETABLE")
tblsize = 1000


scale = {0,1,2,3,4,5,6,7,8,9,10,11} + 60
triad = {0,4,7}
chords = modsets(scale, triad)

chordseq = {0,5,7,0,3,10,5,0,7,8,0,2,8,7,0}

model = markov(chordseq, 2, 40)

st = 0
for (c = 0; c < len(model); c += 1) {
    chordIndex = model[c]
    chord = chords[chordIndex]
    for (n = 0; n < 16; n += 1) {
        note = pickrand(chord) + pickwrand(-24,1, -12,2, 0,3, 12,2, 24,1)
        amp = remap(note, 60-24, 60+24, 12000, 7000)
        fq = cpsmidi(note)
        wv = maketable("wave", tblsize, "tri" + trand(2, 18))
        env = maketable("curve", "nonorm", tblsize, 0,0,2, 1,1,-1, trand(2, 100),0.5,-2, 400,0)
        for ( v = 0; v < 3; v += 1) {
            WAVETABLE(st, irand(1.6,2.7), amp * env / 3, fq + irand(-4, 4), random(), wv)
        }
        st += 0.15
    }
}