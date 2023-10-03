/**
 * @brief Generates an arithmetic series from a to b, incrementing by s steps
 * 
 * @param a starting value
 * @param b ending value
 * @param s incremental step size
 * @return list 
 */
list arithmser(float a, float b, float s) {
	return iter(b, _thru, a, s)
}