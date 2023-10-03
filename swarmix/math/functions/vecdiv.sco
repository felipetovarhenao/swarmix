/**
 * @brief Vector (element-wise) list division.
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list vecdiv(list a, list b) {
    return _vecop(a, 1 / b, _mul)
}