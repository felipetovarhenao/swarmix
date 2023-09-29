list getspeakers(float N, float o) {
    list s
    s = {}

    float a, i
    a = TWO_PI / N
    float x, y

    if (!o) {
        o = 0
    }

    for (i = 0; i < N; i += 1) {
        x = cos(a * -i + o)
        y = sin(a * -i + o)
        s[i] = {x, y}
    }

    return s
}

list loctopan(list loc, list s) {
    list d
    d = {}
    float x, sum
    for (i = 0; i < len(s); i += 1) {
        x = (1.0 / 2^euclid(s[i], loc))^2
        d[i] = x
        sum += x 
    }

    return normalize(d)
}