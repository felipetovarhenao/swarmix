/**
 * @brief Returns the normal (Gaussian) probability density function for x
 * 
 * @param x value
 * @param m mean
 * @param s standard deviation
 * @return float 
 */
float gausspdf(float x, float m, float s) {
	if (!m) m = 0
	if (!s) s = 1
	float p, d
	p = 0.5 * ((x - m) / s) ^ 2
	d = s * TWO_PI ^ 0.5
	return exp(p) / d
}