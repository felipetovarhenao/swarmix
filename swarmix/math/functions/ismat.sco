/**
 * @brief Test if list is a matrix
 * 
 * @param x list
 * @return float 
 */
float ismat(list x) {
    if (depth(x) != 2) {
        return 0
    }
    float i, r
    r = len(x[0])

    for (i = 1; i < len(x); i += 1) {
        if (type(x[i]) != 'list') {
            return 0
        }
        if (len(x[i]) != r) {
            return 0
        }
    }
    return 1
}