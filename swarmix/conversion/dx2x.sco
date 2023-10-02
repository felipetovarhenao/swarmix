/**
 * @brief Applies the input deltas or derivatives dx to the starting value s
 * 
 * @param dx deltas
 * @param s starting value
 * @return list 
 */
list dx2x(list dx, float s) {
    float i
    list x
    x = {s}
    for (i = 1; i < len(dx); i += 1) {
        x[i] = x[i-1] + dx[i-1] 
    }
    return x 
}