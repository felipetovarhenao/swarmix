/**
 * @brief Returns the depth of a list x
 * 
 * @param x list to get depth of
 * @return float 
 */
float depth(list x) {
    float i, d
    d = 0
    for (i = 0; i < len(x); i += 1) {
        if (type(x[i]) == 'list') {
            float t
            t = depth(x[i])
            if (t > d) {
                d = t
            }
        }
    }
    return d + 1
}