/**
 * @brief Recursively adds all values in a list
 * 
 * @param l list
 * @return float 
 */
float reduce(list l) {
    float i, out
    out = 0
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) == "float") {
            out += l[i]
        } else if (type(l[i]) == "list") {
            float temp
            temp = reduce(l[i])
            out += temp
        }
    }
    return out
}