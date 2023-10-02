/**
 * @brief Returns the nearest element in list l to float element x, as a FloatNeighbor struct (value, index, distance)
 * NOTE: using FloatNeighbor as a return type does not work
 * 
 * @param l list to search
 * @param x target float
 * @return FloatNeighbor struct
 */
float nearestf(list l, float x) {
    list y
    y = _nns(l, {x}, absdiff)

    struct FloatNeighbor n
    n.value = y[0][0]
    n.index = y[0][1]
    n.distance = y[0][2]

    return n
}