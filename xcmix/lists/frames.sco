/**
 * @brief Given a list l, returns a list of frames or windows of length w and hop size h.
 * 
 * @param l list
 * @param w window length
 * @param h hop size
 * @return list 
 */
list frames(list l, float w, float h) {
    list y
	float i, k
	y = {}
	k = 0

	if (!h) h = 1
	
	for (i = 0; i < len(l) - w + 1; i += h) {
		y[k] = indexrange(l, i, i + w)
		k += 1
	}
    return y
}