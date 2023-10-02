
/**
 * @brief Utility function to convert a list of {list, float, float} into a FloatNeighbor struct
 * 
 * @param x list
 * @return list 
 */
list _l2fneighbor(list x) {
	struct ListNeighbor n
	n.value = x[0]
	n.index = x[1]
	n.distance = x[2]
	return n
}