/**
 * @brief Returns the indices at which list element x appears in list l.
 * 
 * @param l 
 * @param x
 * @return list 
 */
list listindex(list l, list x) {
    float i, j
    string a
    a = l2str(x)
    list y
    j = 0
    y = {}
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) == 'list' && l2str(l[i]) == a) {
            y[j] = i
            j += 1
        }
    }
    return y
}