/**
 * @brief Returns the signed distance in semitones between two pitches in pitch class space
 * 
 * @param a pitch
 * @param b pitch
 * @return float 
 */
float pcdist(float a, float b, float n) {
    if (!n) n = 12

    float d1, d2

    a = modn(a, n)
    b = modn(b, n)
    d1 = b-a
    d2 = d1 + n * -sign(d1)
    if (abs(d1) < abs(d2)) {
        return d1
    }
    return d2
}