/**
 * @brief Shorthand utility function for simple loops
 * 
 * @param N Number of iterations
 * @param f lambda function with signature (float index) -> any
 * @return list 
 */
list iter(float N, mfunction f) {
    float i
    list y
    y = {}
    for (i = 0; i < N; i+= 1) {
        y[i] = f(i)
    }
    return y
}