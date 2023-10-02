/**
 * @brief Deep equality comparison between 2 lists
 * 
 * @param a list
 * @param b list
 * @return float 
 */
float deepeq(list a, list b) {
    float y, i, N
    N = len(a)
    if (N != len(b)) {
        return 0
    }
    y = 1
    for (i = 0; i < len(a); i += 1) {
        if ((type(a[i]) == type(b[i])) && (type(a[i]) == "float" || type(a[i]) == "string")) {
            if (a[i] != b[i]) {
                y = 0
                i = N
            }
        } else if (type(a[i]) == "list" && type(b[i]) == "list") {
            if (!deepeq(a[i], b[i])) {
                y = 0
                i = N
            }
        } else {
            y = 0
            i = N
        }
    }
    return y
}
