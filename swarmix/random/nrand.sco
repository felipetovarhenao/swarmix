/**
 * @brief Returns a random number following a normal (Gaussian) distribution
 * 
 * @param m mean
 * @param s standard deviation
 * @return float 
 */
float nrand(float m, float s) {
    if (!m) m = 0
    if (!s) s = 1
    return sqrt(-2 * log(random())) * cos(TWO_PI * random()) * s + m
}