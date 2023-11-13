/**
 * @brief Numerically sorts a list in place using the quick-sort algorithm. 
 * An optional element-access function can be provided to sort non-float elements
 * NOTE: this function is unusable due to the low recursion limit in cmix.
 * 
 * @param x list to sort
 * @param f optional element-access function
 * @return list 
 */
list qsort(list x, mfunction f) {
    float N, i, j, p
    list l, r, m, tmp

    l = {}
    m = {}
    r = {}

    N = len(x)
    if (N <= 1) {
        return x
    }

    if (!f) f = _thru

    p = f(x[trunc(N/2)])
        
    for (i = 0; i < N; i += 1) {
        tmp = {f(x[i])}
        if (tmp[0] < p) {
            l[len(l)] = tmp[0]
        } else if (tmp[0] == p) {
            m[len(m)] = tmp[0]
        } else {
            r[len(r)] = tmp[0]
        }
    }
    return merge(merge(qsort(l, f), m), qsort(r, f))
}