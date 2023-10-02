/**
 * @brief Repeats list x, n times
 * 
 * @param x list to repeat
 * @param n repetitions
 * @return list 
 */
list repeatn(list x, float n) {
    list y
    y = {}
    
    float i
    for (i = 0; i < n; i += 1) {
        y = merge(y, x)
    }
    return y
}