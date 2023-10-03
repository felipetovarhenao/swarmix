/**
 * @brief MIDI to frequency conversion (Wrapper for cpsmidi)
 * 
 * @param m 
 * @return float 
 */
float m2f(float m) {
	return cpsmidi(m)
}