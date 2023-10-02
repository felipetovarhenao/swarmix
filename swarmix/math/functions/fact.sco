/**
 * @brief Non-recursive implementation of factorial function
 * NOTE: Recursive implementation does not seem to work
 * 
 * @param n integer
 * @return float 
 */
float fact(float n) {
    float r, i
    r = 1
    n = abs(n)
    if (n > 1) {
        for (i = 0; i < n; i += 1) {
            r *= n - i
        }
    }
    return r
}