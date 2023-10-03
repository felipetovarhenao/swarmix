/**
 * @brief Accumulator function that recursively applies a binary function f to each value and the accumulated value, initialized with s
 * 
 * @param l list to reduce
 * @param f binary float function
 * @param s initial value
 * @return float 
 */
float reduce(list l, mfunction f, float s) {
    float i, y
    
    if (!s) s = 0
    y = s

    if (!f) f = _add

    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) == "float") {
            y = f(y, l[i])
        } else if (type(l[i]) == "list") {
            float tmp
            tmp = reduce(l[i], f, s)
            y = f(y, tmp)
        }
    }
    return y
}