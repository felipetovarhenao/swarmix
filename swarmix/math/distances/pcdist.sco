/**
 * @brief Returns the signed distance in semitones between two pitches in pitch class space
 * 
 * @param a pitch
 * @param b pitch
 * @return float 
 */
float pcdist(float a, float b) {
    float d1, d2
    a = modn(a, 12)
    b = modn(b, 12)
    d1 = b-a
    d2 = d1-12
    if (abs(d1) < abs(d2)) {
        return d1
    }
    return d2

}