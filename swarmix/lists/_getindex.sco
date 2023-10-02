/**
 * @brief Base function to get the indices at which element x appears in list l.
 * 
 * @param l 
 * @param x 
 * @return list 
 */
list _getindex(list l, list x) {
    float i, j
    list y
    j = 0
    for (i = 0; i < len(l); i += 1) {
        if (l[i] == x[0]) {
            y[j] = i
            j += 1
        }
    }
    return y
}

