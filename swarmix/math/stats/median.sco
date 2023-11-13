/**
 * @brief Returns the median value from a numeric list
 * 
 * @param x numeric list
 * @return float 
 */
float median(list x) {
    list y
    float N, m
    N = len(x)
    m = trunc(N/2)
    y = sort(x, _thru)
    if (N % 2 == 1) {
        return y[m]
    }
    return (y[m-1]+y[m])/2
}