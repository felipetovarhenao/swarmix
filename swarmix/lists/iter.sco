/**
 * @brief Shorthand utility function for simple loops
 * 
 * @param N Number of iterations
 * @param f lambda function with signature (float index) -> any
 * @param s starting loop value
 * @param d increment loop value
 * @return list 
 */
list iter(float N, mfunction f, float s, float d) {
    float i, j
    list y
    y = {}
    if (!s) s = 0
    if (!d) d = 1
    j = 0
    for (i = s; i < N; i += d) {
        y[j] = f(i)
        j += 1
    }
    return y
}