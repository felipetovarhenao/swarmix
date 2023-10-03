list interpolate(list a, list b, float N) {
	if (len(a) != len(b)) {
		print("Lists must have the same length")
		exit()
	}
	float i, n, s
	s = len(a)
	
	if (!N || N < 2) {
		return a
	}

	list y
	y = {}
	for (n = 0; n < N; n += 1) {
		float w 
		w = n / (N - 1)
		list tmp
		tmp = {}
		for (i = 0; i < s; i += 1) {
			tmp[i] = a[i] * (1-w) + b[i] * w
		}
		y[n] = tmp
	}
	return y
}