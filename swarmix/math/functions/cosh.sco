/**
 * @brief Returns the hyperbolic cosine of angle x
 * 
 * @param x angle
 * @return float 
 */
float cosh(float x) {
    return _hypersincos(x, 0, 1)
}