/**
 * @brief Returns the p-order Minkowski distance between points a and b
 * 
 * @param a point
 * @param b point
 * @param p order
 * @return float 
 */
float minkowski(list a, list b, float p) {
    if (len(a) != len(b)) {
        print('lists must have the same length')
        exit()
    }
    
    float i, s
    for (i = 0; i < len(a); i += 1) {
        s += abs(a[i] - b[i])^p
    }

    return s^(1/p)
}