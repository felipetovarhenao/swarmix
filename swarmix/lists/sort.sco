/**
 * @brief Numerically sorts a list in place using the bubble-sort algorithm. 
 * An optional element-access function can be provided to sort non-float elements
 * 
 * @param x list to sort
 * @param f optional element-access function
 * @return list 
 */
list sort(list x, mfunction f) {
    float i, j, n
    list tmp
    n = len(x)

    if (!f) f = _thru
    
    for (i = 0; i < n - 1; i += 1) {
        for (j = 0; j < n - i - 1; j += 1) {
            if (f(x[j]) > f(x[j + 1])) {
                tmp[0] = x[j]
                x[j] = x[j + 1]
                x[j + 1] = tmp[0]
            }
        }
    }
    return x
}