/**
 * @brief Returns the k-nearest list neighbors of x in list l
 * 
 * @param l list to search in
 * @param x target list
 * @param k number of neighbors
 * @return list of ListNeighbor structs (value, index, distance)
 */
list knnl(list l, list x, float k, mfunction f) {
    if (!k) k = 1
    list y
    if (!f) f = euclid
    y = _nns(l, x, f)
    y = mapelem(firstn(y, k), _l2lneighbor, 1)
    return y
}