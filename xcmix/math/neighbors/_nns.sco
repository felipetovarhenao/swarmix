/**
 * @brief Base function for nearest neighbor search.
 * 
 * @param l 
 * @param x 
 * @param f 
 * @return list 
 */
list _nns(list l, list x, mfunction f) {
    // initialize best distance, match, and index
    float i, d
    list n
    n = {}
    for (i = 0; i < len(l); i += 1) {
        n[i] = {l[i], i, f(l[i], x)}
    }
    sort(n, _third)
    return n
}