list gen_speaker_array(float nchans) {
    speakers = {}
    rot = 360/nchans
    for (i = 0; i < nchans; i += 1) {
        angle = rot*i
        speakers[i] = poltocar(angle, 1)
    }
    return speakers
}

list spatvals(list sploc, list srcloc, float size) {
    list d
    float sum
    d = {}
    for (i = 0; i < len(sploc); i += 1) {
        d[i] = 1.0/ pow(2, size * euclid(sploc[i], srcloc))
    }
    return d
}