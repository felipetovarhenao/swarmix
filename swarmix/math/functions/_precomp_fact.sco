/**
 * @brief Returns a precomputed factorial for a value 2^(i) + m, where 0 <= i < 10 and 0 <= m <= 1
 * 
 * @param i exponent
 * @param m binary offset
 * @return float 
 */
float _precomp_fact(float i, float m) {
    return _PRECOMP_FACTORIALS[m][i]
}