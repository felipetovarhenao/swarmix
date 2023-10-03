/**
 * @brief Returns the dot product between vectors a and b
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list dot(list a, list b) {
    return reduce(vecmul(a, b))
}