/**
 * @brief Vector (element-wise) list subtraction.
 * 
 * @param a vector
 * @param b vector
 * @return list 
 */
list vecsub(list a, list b) {
	return _vecop(a, b * -1, _add)
}