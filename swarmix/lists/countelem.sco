/**
 * @brief Returns a map with the number of times (value) and element (key) appears in list `x`.
 * 
 * @param x atomic list
 * @return map
 */
map countelem(list x) {
    map t
    list k
    float i 
    for (i = 0; i < len(x); i += 1) {
        if (!contains(t, x[i])) {
            t[x[i]] = 1
            k[len(k)] = x[i]
        } else {
            t[x[i]] = 1 + t[x[i]]
        }
    }
    return {t, k}
}