/**
 * @brief Constraints a value x to a range between l and u
 * 
 * @param x value
 * @param l lower bound
 * @param u upper bound
 * @return float 
 */
float clip(float x, float l, float u) {
    float y
    if (x < l) {
        y = l
    } else if (x > u) {
        y = u
    } else {
        y = x
    }
    return y
}