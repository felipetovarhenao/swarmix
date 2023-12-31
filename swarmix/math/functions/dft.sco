/**
 * @brief Discrete fourier transform
 * 
 * @param s signal
 * @return list 
 */
list dft(list s) {
    float N, n, k, t, a
    list out
    N = len(s)
    t = 1.e-10
    a = -2*PI
    for (k = 0; k < N/2; k += 1) {
        struct Complex val
        val.re = 0
        val.im = 0
        for (n = 0; n < N; n += 1) {    
            val.re = val.re + s[n] * cos((a*n*k)/N)
            val.im = val.im + s[n] * sin((a*n*k)/N)
        } 
        val.re = (val.re*2) / N
        val.im = (val.im*2) / N
        if (abs(val.re) < t) {
            val.re = 0
        }
        if (abs(val.im) < t) {
            val.im = 0
        }
        out[k] = val
    }
    return out
}