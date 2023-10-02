/**
 * @brief Returns a list of length n with random numbers between -1 and 1
 * 
 * @param n list length
 * @return list 
 */
list randlist(float n) {
    return _randlist(n, 0, 0, _rand)
}