/**
 * @brief Polar to cartesian conversion
 * 
 * @param a angle
 * @param m magnitude
 * @return list 
 */
list pol2car(float a, float m) {
    if (!m) m = 1
    return {cos(a) * m, sin(a) * m}
}