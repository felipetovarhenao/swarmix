/**
 * @brief Returns the sine of angle x
 * 
 * @param x angle in radians
 * @return float 
 */
float sin(float x) {
    return _hypersincos(x, 1, 0)
}