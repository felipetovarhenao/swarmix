/**
 * @brief Scales a value x with domain a to b, to a value with domain c to d.
 * 
 * @param x value
 * @param a input domain minimum
 * @param b input domain maximum
 * @param c output domain minimum
 * @param d output domain maximum
 * @return float 
 */
float remap(float x, float a, float b, float c, float d) {
    return ((x - a) / (b - a)) * (d - c) + c
}