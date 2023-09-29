float exp(float n) {
    return pow(e, n)
}

float log2(float n) {
   return log(n)/log(2) 
}

float fact(float n) {
    float r, i
    r = 1
    n = abs(n)
    if (n > 0) {
        for (i = 0; i < n; i += 1) {
            r *= (n - i) 
        }
    }
    return r
}

float modn(float n, float m) {
    return n - m*trunc(n/m)
}

float cos(float x) {
    float out, i
    out = 0
    x = modn(x, PI*2)
    for (i = 0; i < 16; i += 1) {
        out += pow(-1, i) * pow(x, 2*i) / fact(2*i) 
    }
    return out 
}

float sin(float x) {
    float out, i
    out = 0
    x = modn(x, PI*2)
    for (i = 0; i < 16; i += 1) {
        out += pow(-1, i) * pow(x, (2*i) + 1) / fact((2*i) + 1) 
    }
    return out 
}

float tan(float x) {
    return sin(x)/cos(x)
}

float cosh(float x) {
    float out, i
    out = 0
    for (i = 0; i < 8; i += 1) {
        out += pow(x, 2*i) / fact(2*i) 
    }
    return out 
}

float sinh(float x) {
    float out, i
    out = 0
    for (i = 0; i < 8; i += 1) {
        out += pow(x, 2*i+1) / fact(2*i+1) 
    }
    return out 
}

float tanh(float x) {
    return (exp(x) - exp(-x))/(exp(x) + exp(-x))
}

float radtodeg(float r) {
    return (r/PI)*180
}

float degtorad(float d) {
    return (d/180)*PI
}

list poltocar(float theta, float mag) {
    float rad
    rad = degtorad(theta)
    return {cos(rad) * mag, sin(rad) * mag}
}

float euclid(list la, list lb) {
    float i, out
    if (len(la) == len(lb)) {
        list lab
        for (i = 0; i < len(la); i += 1) {
            lab[i] = pow(la[i] - lb[i], 2)
        }
        out = sqrt(reduce(lab))
    }
    return out 
}

list weuclid(list la, list lb, list w) {
    float i, out
    if (len(la) == len(lb) && len(la) == len(w)) {
        list lab
        for (i = 0; i < len(la); i += 1) {
            lab[i] = pow(la[i] - lb[i], 2) * w[i]
        }
        out = sqrt(reduce(lab))
    }
    return out 
}