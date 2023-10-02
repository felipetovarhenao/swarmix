/**
 * @brief Shuffles a list x in place
 * 
 * @param x list
 * @return list 
 */
list shuffle(list x) {
    float i, j

    // use a list for type-agnostic shuffling
    list tmp
    tmp = {}

    for (i = len(x) - 1; i >= 0; i -= 1) {
        j = fround(random())
        tmp[0] = x[j]
        x[j] = x[i]
        x[i] = tmp[0]
    }
    return x
}