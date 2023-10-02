/**
 * @brief Normalizes a list such that the sum of all elements is equal to 1
 * 
 * @param l list to normalize
 * @return float 
 */
list normalize(list l) {
    float i, s
    list n

    n = {}
    for (i = 0; i < len(l); i += 1) {
        s += l[i]
    }

    if (s == 0) {
        print("Warning: list not normalized — sum of elements is 0")
        return l
    }

    for (i = 0; i < len(l); i += 1) {
        n[i] = l[i] / s
    }
    
    return  n
}