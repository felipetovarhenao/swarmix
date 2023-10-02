/**
 * @brief Returns the weighted Euclidean distance between points a and b with weights w
 * 
 * @param a point
 * @param b point
 * @param w weights
 * @return float 
 */
float weuclid(list a, list b, list w) {
    if (len(a) != len(b) || len(w) != len(a)) {
        print('lists have the same length')
        exit()
    }
    
    float i, s
    for (i = 0; i < len(a); i += 1) {
        s += w[i] * (a[i] - b[i])^2
    }

    return s^0.5
}