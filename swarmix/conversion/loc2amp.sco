/**
 * @brief Location to amplitude conversion
 * 
 * @param loc 2D listener location 
 * @param s list of 2D speaker location
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