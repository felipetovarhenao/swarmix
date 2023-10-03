/**
 * @brief Base function for element-wise binary list operations
 * 
 * @param a vector
 * @param b vector
 * @param f vector function
 * @return list 
 */
list _vecop(list a, list b, mfunction f) {
	if (len(a) != len(b)) {
		print('Lists must have the same length')
		exit()
	}
	float i
	list y
	y = {}
	for (i = 0; i < len(a); i += 1) {
		y[i] = f(a[i], b[i])
	}
	return y
}