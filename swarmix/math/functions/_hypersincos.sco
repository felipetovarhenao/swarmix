/**
 * @brief Base function for computing the trigonometric functions sin, cos, sinh, and cosh.
 * 
 * @param x value
 * @param m is sine?
 * @param h is hyperbolic?
 * @return float 
 */
float _hypersincos(float x, float m, float h) {
    // wrap value around to prevent precision errors
    x = modn(x, TWO_PI)

    // initialize variables
    float y, v, c, i, s
    y = 0

    // set base to -1 is function is hyperbolic
    s = h * 2 - 1
    
    // compute terms
    for (i = 0; i < 10; i += 1) {
        c = s^i
        v = 2 * i + m
        y += c * (x^v) / _precomp_fact(i, m) 
    }
    return y 
}