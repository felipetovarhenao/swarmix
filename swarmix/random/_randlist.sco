/**
 * @brief Base function for generating random-valued lists
 * 
 * @param n list length
 * @param l lower bound
 * @param u upper bound
 * @param f random number generator function with signature (float, float) -> float
 * @return list 
 */
list _randlist(float n, float l, float u, mfunction f) {
    if (!l) l = 0
    if (!u) u = 0

    list y
    float i
    y = {}

    for (i = 0; i < n; i += 1) {
        y[i] = f(l, u)
    }
    return y
}