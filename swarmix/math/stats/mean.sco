/**
 * @brief Returns the mean value from a numeric list
 * 
 * @param x numeric list
 * @return float 
 */
float mean(list x) {
    return reduce(x, _add)/len(x)
}