/**
 * @brief Scales a value x with domain inmin to inmax, to a value with domain outmin to outmax.
 * 
 * @param x value
 * @param inmin input domain minimum
 * @param inmax input domain maximum
 * @param outmin output domain minimum
 * @param outmax output domain maximum
 * @return float 
 */
float remap(float x, float inmin, float inmax, float outmin, float outmax) {
    return ((x - inmin) / (inmax - inmin)) * (outmax - outmin) + outmin
}