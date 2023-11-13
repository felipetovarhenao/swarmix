/**
 * @brief Numerically sorts a list in place using the bubble-sort algorithm. 
 * An optional element-access function can be provided to sort non-float elements
 * 
 * @param x list to sort
 * @param f optional element-access function
 * @return list 
 */
list sort(list x, mfunction f) {
    float i, j, N, k
    list tmp
    N = len(x)

    if (!f) f = _thru
    
    for (i = 0; i < N - 1; i += 1) {
        k = 0
        for (j = 0; j < N - i - 1; j += 1) {
            if (f(x[j]) > f(x[j + 1])) {
                k =  1
                tmp[0] = x[j]
                x[j] = x[j + 1]
                x[j + 1] = tmp[0]
            }
        }
        if (!k) {
            return x
        }
    }
    return x
}