/**
 * @brief Returns a list of length n with floating-point random numbers with 
 * a normal distribution of mean m and standard deviation s.
 * 
 * @param n list length
 * @param m mean
 * @param s standard deviation
 * @return list 
 */
list nrandlist(float n, float m, float s) {
    return _randlist(n, m, s, nrand)
}