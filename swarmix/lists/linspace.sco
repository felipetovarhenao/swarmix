/**
 * @brief Generates an n-step linear space from a to b
 * 
 * @param a starting value
 * @param b ending value
 * @param n number of steps
 * @return list 
 */
list linspace(float a, float b, float n) {
    float i, r, s, a
    list y
    y = {}

    r = b - a
    s = r / (n - 1)
    a = a
    
    for (i = 0; i < n; i += 1) {
        y[i] = a
        a += s
    }

    return y
}