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
        x = fround(cos(a * -i + o) * 100) / 100
        y = fround(sin(a * -i + o) * 100) / 100
        s[i] = {x, y}
    }

    return s
}

list loctopan(list loc, list s, float size) {
    list d
    d = {}
    for (i = 0; i < len(s); i += 1) {
        d[i] = 1.0 / 2^euclid(s[i], loc)
    }
    return d
}