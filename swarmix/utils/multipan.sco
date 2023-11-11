/**
 * @brief Given a list of speaker locations and a source location, returns the normalized panning value for each speaker
 * 
 * @param N number of vertices
 * @param r rotation angle offset
 * @return list 
 */
list multipan(list s, list l) {
    list p
    float i
    p = {}
    for (i = 0; i < len(s); i += 1) {
        float v
        v = euclid(s[i], l)
        p[i] = 1/(v*v)
    }
    float t
    v = reduce(p, _add, 0)
    return p / v
}