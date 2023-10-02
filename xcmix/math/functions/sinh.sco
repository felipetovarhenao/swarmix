/**
 * @brief Returns the hyperbolic sine of angle x
 * 
 * @param x angle
 * @return float 
 */
float sinh(float x) {
    return _hypersincos(x, 1, 1)
}