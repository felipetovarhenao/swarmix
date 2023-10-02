/**
 * @brief Returns the Euclidean distance between points a and b
 * 
 * @param a point
 * @param b point
 * @return float 
 */
float euclid(list a, list b) {
    return minkowski(a, b, 2)
}