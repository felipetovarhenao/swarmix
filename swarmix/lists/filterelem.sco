list filterelem(list x, mfunction f, float d) {
    float i
    list y
    y = {}
    
    if (!d) d = 0

    for (i = 0; i < len(x); i += 1) {
        if (type(x[i]) == 'list') {
            if (d > 0 && depth(x[i]) == d && f(x[i])) {
                y[len(y)] = x[i]
            } else {
                list tmp
                tmp = filterlist(x[i], f, d)
                y[len(y)] = tmp
            }
        } else if (d == 0 && f(x[i])) {
            y[len(y)] = x[i]
        }
    }
	
    return y
}