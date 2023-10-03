/**
 * @brief Returns a deep-copy of list x
 * 
 * @param x list to copy
 * @return list 
 */
list deepcopy(list x) {
    float i
    list y
    y = {}
    for (i = 0; i < len(x); i += 1) {
        if (type(x[i]) == 'list') {
            list tmp
            tmp = deepcopy(x[i])
            y[i] = tmp
        } else {
            y[i] = x[i]
        }
    }
    return y
}