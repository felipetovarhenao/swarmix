/**
 * @brief Ratio to duration conversion
 * 
 * @param d duration
 * @param r ratio
 * @return float 
 */
float r2dur(float d, float r) {
    float t, td
    t = log2(r)
    t = remap(t, 0, 1, 0, 0.012)
    t = t * 1000
    td = (t % 12) / 100
    t = trunc(t/10)
    return translen(d, t + td)
}