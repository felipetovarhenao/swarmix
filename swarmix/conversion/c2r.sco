/**
 * @brief Cents to ratio conversion
 * 
 * @param c cents
 * @return float 
 */
float c2r(float c) {
    return 2^(c/1200)
}