/**
 * @brief Returns the k-nearest float neighbors of x in list l
 * 
 * @param l list to search in
 * @param x target float value
 * @param k number of neighbors
 * @return list of FloatNeighbor structs (value, index, distance).
 */
list knnf(list l, float x, float k) {
    if (!k) k = 1
    list y
    y = _nns(l, {x}, absdiff)
    y = mapelem(firstn(y, k), _l2fneighbor, 1)
    return y
}