/**
 * @brief Mel to herz frequency conversion
 * 
 * @param m mel frequency
 * @return float 
 */
float mel2f(float m) {
    return 700 * (exp(m/1125) - 1)
}