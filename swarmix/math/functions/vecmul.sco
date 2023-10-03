/**
 * @brief Vector (element-wise) list multiplication.
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list vecmul(list a, list b) {
    return _vecop(a, b, _mul)
}