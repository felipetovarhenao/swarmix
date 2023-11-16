/**
 * @brief Given a panning envelope (or more accurately, an normalized unit angle envelope) as a list, a list of speaker coordinates, 
 * and a phandle size, it returns a list, with amplitude phandles for each of the speaker coordinates.
 * 
 * @param a normalized unit angle envelope (list)
 * @param s speaker coordinates
 * @param r phandle size
 * @return list of phandles
 */
list multipanhandle(list a, list s, float r) {
    float i, j, t
    list p, h, e
    handle ps

    p = {}
    h = {}

    float N
    N = max(1, len(a) - 1)

    for (i = 0; i <= N+1.e-8; i += N/(r-1)) {
        t = samplist(a, i) * -PI
        p[len(p)] = multipan(s, pol2car(t, 1))
    }

    p = mattrans(p)

    for (i = 0; i < len(p); i += 1) {
        e = {}
        for (j = 0; j < len(p[i])*2; j += 2)  {
            e[j] = j
            e[j+1]=p[i][j/2]
        }
        h[i] = maketable('line', 'nonorm', r, e)
        if (i > 0) {
            ps = add(ps, h[i])
        } else {
            ps = copytable(h[i])
        }
    }

    for (i = 0; i < len(h); i += 1) {
        h[i] = div(h[i], ps)
    }

    return h
}