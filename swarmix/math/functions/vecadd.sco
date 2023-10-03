/**
 * @brief Vector (element-wise) list addition.
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list vecadd(list a, list b) {
	return _vecop(a, b, _add)
}