/**
 * @brief Computes an approximation of an integral for a given table handle
 * 
 * @param t table handle
 * @param s precision in number of samples
 * @return float 
 */
float tableintegral(handle t, float s) {
    float i, N, y

    if (!s) s = 50

    y = 0
    N = tablelen(t);

    for (i = 0; i < s; i += 1) {
        y += samptable(t, N*(i/s))/s
    }

    return y
}