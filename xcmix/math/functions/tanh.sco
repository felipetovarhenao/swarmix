/**
 * @brief Returns the hyperbolic tangent of angle x
 * 
 * @param x angle
 * @return float 
 */
float tanh(float x) {
    return (exp(x) - exp(-x))/(exp(x) + exp(-x))
}