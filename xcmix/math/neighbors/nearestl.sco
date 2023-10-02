/**
 * @brief Returns the nearest element in list l to list element x, as a ListNeighbor struct (value, index, distance)
 * If no distance function is provided, euclidean distance is used.
 * NOTE: using ListNeighbor as a return type does not work
 * 
 * @param l list to search
 * @param x target list
 * @param d distance function
 * @return ListNeighbor
 */
list nearestl(list l, list x, mfunction d) {
    list y

    if (!d) d = euclid

    y = _nns(l, x, d)

    struct ListNeighbor n
    n.value = y[0][0]
    n.index = y[0][1]
    n.distance = y[0][2]

    return n
}




