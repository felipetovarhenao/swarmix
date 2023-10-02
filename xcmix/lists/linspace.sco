/**
 * @brief Generates an n-step linear space from st to end
 * 
 * @param st starting value
 * @param end ending value
 * @param n number of steps
 * @return list 
 */
list linspace(float st, float end, float n) {
    float i, r, s, a
    list y
    y = {}

    r = end - st
    s = r / (n - 1)
    a = st
    
    for (i = 0; i < n; i += 1) {
        y[i] = a
        a += s
    }

    return y
}