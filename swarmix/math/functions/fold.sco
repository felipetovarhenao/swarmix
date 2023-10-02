/**
 * @brief Periodic triangular function in the range of (0-2)
 * 
 * @param x float
 * @return float 
 */
float fold(float x) {
    return abs(modn( x + 1.0, 2.0) - 1.0);
}