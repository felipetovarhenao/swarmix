/**
 * @brief Returns a list of length n with truncated random numbers between l and h
 * 
 * @param n list length
 * @param l lower bound
 * @param u upper bound
 * @return list 
 */
list trandlist(float n, float l, float u) {
    return _randlist(n, l, u, _trand)
}