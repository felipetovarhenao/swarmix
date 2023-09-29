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
    if (n > 1) {
        for (i = 0; i < n; i += 1) {
            r *= (n - i) 
        }
    }
    return r
}

float modn(float n, float m) {
    return n - m*trunc(n/m)
}

float _sin_cos(float x, float m) {
    float r, i, c, t, v
    r = 0
    x = modn(x, TWO_PI)
    for (i = 0; i < 10; i += 1) {
        c = (-1)^i
        v = (2 * i + m)
        t = c * (x^v) / fact(v)
        r += t
    }
    return r
}

float sin(float x) {
    return _sin_cos(x, 1)
}

float cos(float x) {
    return _sin_cos(x, 0)
} 

float sign(float x) {
    if (x > 0) {
        return 1
    }
    return -1
}

/*
    The cmix implementation of round doesn't behave as expected with negative values.
    As such, use this function as a temporary replacement.
*/
float fround(float x) {
    return trunc(abs(x) + 0.5) * sign(x)
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

list poltocar(float a, float m) {
    if (!m) m = 1
    return {cos(a) * m, sin(a) * m}
}

float euclid(list a, list b) {
    if (len(a) != len(b)) {
        print('lists must be of same length')
        exit()
    }
    float i, s
    for (i = 0; i < len(a); i += 1) {
        s += (a[i] - b[i])^2
    }
    return s^0.5
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

float remap(float x, float inmin, float inmax, float outmin, float outmax) {
    float r

    if (!outmin) outmin = 0
    if (!outmax) outmax = 1
    
    r = inmax - inmin
    return ((x - inmin) / r) * (outmax - outmin) + outmin
}

/* 
    Normalizes input list such that the sum of all elements is 1
*/
float normalize(list l) {
    float i, s
    list n

    n = {}
    for (i = 0; i < len(l); i += 1) {
        s += l[i]
    }

    if (s == 0) {
        print("Warning: list not normalized — all elements add up to 0")
        return l
    }

    for (i = 0; i < len(l); i += 1) {
        n[i] = l[i] / s
    }
    
    return  n
}

float clip(float i, float min, float max) {
    float out
    if (i < min) {
        out = min
    } else if (i > max) {
        out = max
    } else {
        out = i
    }
    return out
}