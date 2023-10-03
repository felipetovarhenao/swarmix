/**
 * @brief Recursively applies a function f to every element with depth d in list x
 * 
 * @param x list to map
 * @param f function with signature (any) -> any
 * @param d depth of element to pass to function f (default = 0).
 * @return list 
 */
list mapelem(list x, mfunction f, float d) {
    float i
    list y, z
    y = {}
    z = x
    
    if (!d) d = 0

    for (i = 0; i < len(x); i += 1) {
        if (type(x[i]) == 'list') {
            if (d > 0 && depth(x[i]) == d) {
                y[i] = f(x[i])    
            } else {
                list tmp
                tmp = mapelem(x[i], f, d)
                y[i] = tmp
            }
        } else if (d == 0) {
            y[i] = f(x[i])
        }
    }
	
    return y
}