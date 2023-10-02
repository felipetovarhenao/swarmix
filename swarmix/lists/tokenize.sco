/**
 * @brief Returns a list of tokens based on list l
 * 
 * @param l list
 * @return list 
 */
list tokenize(list l) {
    float i, j, k
    list u, y
    u = thin(l)
    y = {}
    k = 0
    for (j = i; j < len(l); j += 1) {
        for (i = 0; i < len(u); i += 1) {
            if (type(u[i]) != "list" && type(u[i]) == type(l[j])) {
                if (u[i] == l[j]) {
                    y[k] = i
                    k += 1
                }
            } else if (type(u[i]) == "list" && type(u[i]) == type(l[j])) {
                if (deepeq(u[i], l[j])) {
                    y[k] = i
                    k += 1
                } 
            }
        }
    }
    return y
}