/**
 * @brief Reverses the order of element in a list x in place
 * 
 * @param x list to reverse
 * @return list 
 */
list rev(list x) {
    float i, j, N
    N = len(x)

    list tmp
    tmp = {}

    for (i = 0; i < trunc(N / 2); i += 1) {
        j = N-i-1
        tmp[0] = x[j]
        x[j] = x[i]
        x[i] = tmp[0]
    }
    return x
}