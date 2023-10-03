/*
	Pending docstring
*/
list modsets(list l, list s) {
    float i, j
    list y
    for (i = 0; i < len(l); i += 1) {
        list r
        for (j = 0; j < len(s); j += 1) {
            r[j] = l[(s[j] + i) % len(l)]
        }
        y[i] = r
    }
    return y
}