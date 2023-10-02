/**
 * @brief Returns x modulo n
 * 
 * @param x dividend
 * @param n modulus
 * @return float 
 */
float modn(float x, float n) {
    return x - n*trunc(x/n)
}