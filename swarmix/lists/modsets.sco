/*
	Pending docstring
*/
list modsets(list l, list s) {
    float i, j
    list out
    for (i = 0; i < len(l); i += 1) {
        list sl
        for (j = 0; j < len(s); j += 1) {
            sl[j] = l[(s[j] + i) % len(l)]
        }
        out[i] = sl
    }
    return out
}