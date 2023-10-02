/**
 * @brief Returns the vertex coordinates for a regular polygon with N sides/vertices, rotated by angle r.
 * 
 * @param N number of vertices
 * @param r rotation angle offset
 * @return list 
 */
list vertexcoord(float N, float r) {
    list s
    s = {}

    float a, i
    a = TWO_PI / N
    float x, y

    if (!r) {
        r = 0
    }

    for (i = 0; i < N; i += 1) {
        x = cos(a * -i + r)
        y = sin(a * -i + r)
        s[i] = {x, y}
    }

    return s
}