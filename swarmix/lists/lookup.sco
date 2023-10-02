/**
 * @brief Returns the elements in list x at indices l
 * 
 * @param x list
 * @param l indices
 * @return list 
 */
list lookup(list x, list l) {
    float i
    list y
    y = {}
    for (i = 0; i < len(l); i += 1) {
        y[i] = x[l[i]]
    }
    return y
}