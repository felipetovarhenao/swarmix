/**
 * @brief Frequency to MIDI conversion
 * 
 * @param f frequency
 * @return float 
 */
float f2m(float f) {
    return 69 + 12 * log2(f/440)
}