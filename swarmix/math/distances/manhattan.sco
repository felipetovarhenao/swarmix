/**
 * @brief Returns the Manhattan distance between points a and b
 * 
 * @param a point
 * @param b point
 * @return float 
 */
float manhattan(list a, list b) {
    return minkowski(a, b, 1)
}