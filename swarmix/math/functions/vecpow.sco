/**
 * @brief Vector (element-wise) list exponentiation.
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list vecpow(list a, list b) {
    return _vecop(a, b, _pow)
}