/**
 * @brief Returns 2 slices of list x at index n. A negative value for n is interpreted as a right-to-left index.
 * 
 * @param x list to slice
 * @param n slicing index
 * @return list 
 */
list slice(list x, float n) {
    float i, N
    N = len(x)

    if (n < 0) {
        n = max(0, N+n)
    }
    
    list l, r
    l = {}
    r = {}
    for (i = 0; i < N; i += 1) {
        if (i < n) {
            l[i] = x[i]
        } else if (i >= n) {
            r[i - n] = x[i]
        }
    }
    return {l, r}
} 