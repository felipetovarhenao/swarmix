/**
 * @brief Returns the 1st derivative or deltas between adjacent elements of x
 * 
 * @param x list
 * @return list 
 */
list x2dx(list x) {
    float i
    list dx
    dx = {}
    for (i = 0;  i < len(x) - 1; i += 1) {
        dx[i] = x[i+1] - x[i] 
    }
    return dx 
}