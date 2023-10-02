/**
 * @brief Returns a list of length n with floating-point random numbers between l and u
 * 
 * @param n list length
 * @param l lower bound
 * @param u upper bound
 * @return list 
 */
list irandlist(float n, float l, float u) {
    return _randlist(n, l, u, _irand)
}