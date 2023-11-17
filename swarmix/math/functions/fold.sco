/**
 * @brief Periodic triangular function
 * 
 * @param x float
 * @return float 
 */
float fold(float x) {
    return abs(modn(2 * x + 1.0, 2.0) - 1.0);
}