/**
 * @brief Herz to mel frequency conversion
 * 
 * @param f frequency
 * @return float 
 */
float f2mel(float f) {
    return 1125 * ln(1 + (f/700))
}