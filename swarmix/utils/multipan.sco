/**
 * @brief Given a list of speaker locations and a source location, returns the normalized panning value for each speaker
 * 
 * @param N number of vertices
 * @param r rotation angle offset
 * @return list 
 */
list multipan(list s, list l) {
    list p
    float i, v, t
    p = {}
    for (i = 0; i < len(s); i += 1) {
        v = max(euclid(s[i], l), 1.e-5)
        p[i] = 1/(v*v)
    }
    t = reduce(p, _add, 0)
    return p / t
}