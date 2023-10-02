/**
 * @brief Rounds x to the nearest integer value
 * NOTE: The cmix implementation of round doesn't behave as expected with negative values.
 * As such, use this function as a temporary replacement.
 * 
 * @param x float
 * @return float 
 */
float fround(float x) {
    return trunc(abs(x) + 0.5) * sign(x)
}