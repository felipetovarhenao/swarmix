/**
 * @brief Matrix transposition
 * 
 * @param m matrix to transpose
 * @return list 
 */
list mattrans(list m) {
    list y
    float r, c, N, M
    y = {}
    N = len(m)
    M = len(m[0])
    for (c = 0; c < M; c += 1) {
        list a
        a = {}
        for (r = 0; r < N; r += 1) {
            list b
            b = m[r]
            a[r] = b[c]
        }
        y[c] = a
    }
    return y
}