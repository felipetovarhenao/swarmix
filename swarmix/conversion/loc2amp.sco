/**
 * @brief Location to amplitude conversion
 * 
 * @param loc xy coordinates of listener location
 * @param s list of xy coordinates of sources
 * @return list 
 */
list loc2amp(list loc, list s) {
    list d
    d = {}
    float x, sum
    for (i = 0; i < len(s); i += 1) {
        x = (1.0 / 2^euclid(s[i], loc))^2
        d[i] = x
        sum += x 
    }

    return normalize(d)
}