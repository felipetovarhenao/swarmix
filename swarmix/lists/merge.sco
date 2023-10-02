/**
 * @brief Merges two lists a and b into one.
 * 
 * @param a list
 * @param b list
 * @return list 
 */
list merge(list a, list b) {
    float i
    list y
    y = a
    for (i = 0; i < len(b); i += 1) {
        y[len(y)] = b[i]
    }
    return y
}