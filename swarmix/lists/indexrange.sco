/**
 * @brief Returns the elements of list l between indices a and b.
 * 
 * @param l list
 * @param a starting index (inclusive)
 * @param b ending index (exclusive)
 * @return list 
 */
list indexrange(list l, float a, float b) {
    float i
    list y
    y = {}
    b = min(b, len(l))
    for (i = 0; i < abs(b-a); i += 1) {
        y[i] = l[a + i]
    }
    return y
}