/**
 * @brief  Flattens a list such that it's depth is equal to 1.
 * 
 * @param l list to flatten
 * @return list 
 */
list flat(list l) {
    float i, j
    list out
    j = 0
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) != "list") {
            out[j] = l[i]
            j += 1
        } else {
            l[i] = flat(l[i])
            out = merge(out, l[i])
            j += 1
        }
    }
    return out
}