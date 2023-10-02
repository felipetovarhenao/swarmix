/**
 * @brief Returns the greatest common divisor of integers a and b
 * 
 * @param a integer
 * @param b integer
 * @return float 
 */
float gcd(float a, float b) {
    if (b == 0) {
        return a
    }
    return gcd(b, a % b)
}