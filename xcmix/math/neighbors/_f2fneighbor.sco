
/**
 * @brief Utility function to convert a list of {float, float, float} into a FloatNeighbor struct
 * 
 * @param x list
 * @return list 
 */
list _f2fneighbor(list x) {
	struct FloatNeighbor n
	n.value = x[0]
	n.index = x[1]
	n.distance = x[2]
	return n
}