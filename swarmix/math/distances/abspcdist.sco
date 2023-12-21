/**
 * @brief Returns the absolute distance in semitones between two pitches in pitch class space
 * 
 * @param a pitch
 * @param b pitch
 * @return float 
 */
float abspcdist(float a, float b) {
    return abs(pcdist(a, b))
}