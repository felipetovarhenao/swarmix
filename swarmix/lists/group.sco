/**
 * @brief Groups a list l into sublists of length g.
 * 
 * @param l list to group
 * @param g group length
 * @return list 
 */
list group(list l, float g) {
    float i, j
    list y
    y = {}
    j = 0
    for (i = 0; i < round(len(l)/g); i += 1) {
        list tmp
        tmp = {}
        for (j = 0; j < g; j += 1) {
            float li
            li = j + (g*i)
            if (li < len(l)) {
                tmp[j] = l[j + (g*i)]
            }
        }
        y[i] = tmp
    }
    return y
}