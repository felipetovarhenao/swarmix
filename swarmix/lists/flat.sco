/**
 * @brief  Flattens a list such that it's depth is equal to 1.
 * 
 * @param l list to flatten
 * @return list 
 */
list flat(list l) {
    float i
    list y
    y = {}
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) != "list") {
            y = merge(y, {l[i]})
        } else {
            list tmp 
            tmp = flat(l[i])
            y = merge(y, tmp)
        }
    }
    return y
}