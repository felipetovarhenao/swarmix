/**
 * @brief Returns the nearest pitch from a 
 * 
 * @param l pitch list to search
 * @param x target pitch
 * @return FloatNeighbor struct
 */
struct FloatNeighbor nearestpc(list l, float x) {
    list y
    y = _nns(l, {x}, _abspcdist)

    struct FloatNeighbor n
    n.value = y[0][0]
    n.index = y[0][1]
    n.distance = y[0][2]

    return n
}

float _abspcdist(float a, list b) {
    return abspcdist(a, b[0])
}