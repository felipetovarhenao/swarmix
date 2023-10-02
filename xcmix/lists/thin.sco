/**
 * @brief Removes duplicate elements in a list
 * 
 * @param l list to remove duplicates from
 * @return list 
 */
list thin(list l) {
    float i, j, k
    list y
    k = 1
    y = {l[0]}
    for (i = 1; i < len(l); i += 1) {
        float c
        c = 0
        for (j = 0; j < len(y); j += 1) {
            if ((type(l[i]) == "float" || type(y[j]) == "string") && type(y[j]) == type(l[i])) {
                if (l[i] == y[j]) {
                    c += 1
                }
            } else if (type(l[i]) == "list" && type(y[j]) == type(l[i])) {
                if (deepeq(l[i], y[j])) {
                    c += 1
                } 
            }
        }
        if (c == 0) {
            y[k] = l[i]
            k += 1
        }  
    }
    return y
}