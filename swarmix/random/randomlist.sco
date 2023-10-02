/**
 * @brief Returns a list of length n with random numbers between 0 and 1
 * 
 * @param n list length
 * @return list 
 */
list randomlist(float n) {
    return _randlist(n, 0, 0, _random)
}