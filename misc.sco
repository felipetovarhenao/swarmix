float remap(float x, float inmin, float inmax, float outmin, float outmax) {
    float mi, ai 
    mi = ((outmax - outmin) / (inmax - inmin))
    ai = outmin - inmin * mi
    return mi * x + ai
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

float rtodur(float d, float r) {
    float t, td
    t = log2(r)
    t = remap(t, 0, 1, 0, 0.012)
    t = t * 1000
    td = (t % 12) / 100
    t = trunc(t/10)
    return translen(d, t + td)
}

list rev(list l) {
    float i
    list out
    out = {}
    for (i = 0; i < len(l); i += 1) {
        out[i] = l[len(l) - 1 - i]
    }
    return out
}

list xtodx(list x) {
    float i
    list dx
    dx = {}
    for (i = 0;  i < len(x) - 1; i += 1) {
        dx[i] = x[i+1] - x[i] 
    }
    return dx 
}

list dxtox(list dx, float st) {
    float i
    list x
    x = {st}
    for (i = 1; i < len(dx); i += 1) {
        x[i] = x[i-1] + dx[i-1] 
    }
    return x 
}

list numdist(list l, float d, float mode) {
    float i
    list out
    l = sort(l)
    if (mode == 0) { 
        for (i = 0; i < len(l); i += 1) {
            out[i] = (l[i] - l[0]) * d + l[0]
        }
    } else if (mode == 1) {
        for (i = 0; i < len(l); i += 1) {
            out[i] = l[0] * pow(l[i] / l[0], d)
        }     
    }
    return out
}

list rissOnsets(float T, float tau, float v) {
    float tl
    list teList
    teList = {}
    for (tl = 0;  tl <= T * pow(2, v);  tl += 1) {
        teList[tl] = tau * (log2((tl/T) + pow(2, v)) - v) 
    }
    return teList 
}

float rissRates(float T, list teList, float v) {
    float tau, te, i
    list rList
    rList = {}
    tau = teList[len(teList) - 1]
    for (i = 0; i < len(teList); i += 1) {
        te = teList[i]
        rList[i] = T * log(2) / tau * pow(2, te/tau + v)
    }
    return rList
}

list rissAmps(float T,  float numv, float v) {
    float i, len, incr, st
    list at 
    len = pow(2,v)
    st = PI * 2 / numv
    incr = st / pow(2,v) / T
    st *= v
    at = {}
    for (i = 0; i < len * T; i += 1) {
        at[i] = (cos((st + (incr * i))) * -0.5) + 0.5
    }
    return at
}

list sort(list inl) {
    list l
    l = inl
	float i, j, n
	n = len(l)
	for (i = 0; i < n - 1; i += 1) {
		for (j = 0; j < n - i - 1; j += 1) {
			if (l[j] > l[j + 1]) {
				float tmp
				tmp = l[j]
				l[j] = l[j + 1]
				l[j + 1] = tmp
			}
		}
	}
	return l
}

list slice(list l, float n) {
    float i
    list la, lb, lout
    la = {}
    lb = {}
    for (i = 0; i < len(l); i += 1) {
        if (i < n) {
            la[i] = l[i]
        } else if (i >= n) {
            lb[i - n] = l[i]
        }
    }
    lout = {la, lb}
    return lout
} 

list ecils(list l, float n) {
    float i
    n = len(l) - n
    list la, lb, lout
    la = {}
    lb = {}
    for (i = 0; i < len(l); i += 1) {
        if (i < n) {
            la[i] = l[i]
        } else if (i >= n) {
            lb[i - n] = l[i]
        }
    }
    lout = {la, lb}
    return lout
} 

list group(list l, float g) {
    float i, j
    list lout
    lout = {}
    j = 0
    for (i = 0; i < round(len(l)/g); i += 1) {
        list tl
        tl = {}
        for (j = 0; j < g; j += 1) {
            float li
            li = j + (g*i)
            if (li < len(l)) {
                tl[j] = l[j + (g*i)]
            }
        }
        lout[i] = tl
    }
    return lout
}

list merge(list la, list lb) {
    float i
    list lout
    lout = la
    for (i = 0; i < len(lb); i += 1) {
        lout[len(lout)] = lb[i]
    }
    return lout
}

list mattrans(list mat) {
	list out
	float row, col, nrows, ncols
	out = {}
	nrows = len(mat)
	ncols = len(mat[0])
	for (col = 0; col < ncols; col += 1) {
		list outRow
		outRow = {}
		for (row = 0; row < nrows; row += 1) {
			list thisRow
			thisRow = mat[row]
			outRow[row] = thisRow[col]
		}
		out[col] = outRow
	}
	return out
}

list range(list l, float st, float end) {
    float i
    list out
    out = {}
    for (i = 0; i <= abs(end-st); i += 1) {
        out[i] = l[st + i]
    }
    return out
}

list frames(list l, float ws, float hs) {
    list out
    if (hs > 0) {
        float i, k
        out = {}
        k = 0
        for (i = 0; i < len(l) - ws + 1; i += hs) {
            out[k] = range(l, i, i + ws - 1)
            k += 1
        }
    }
    return out
}

float compare(list la, list lb) {
    float out
    if (len(la) == len(lb)) {
        float i
        out = 1
        for (i = 0; i < len(la); i += 1) {
            if ((type(la[i]) == type(lb[i])) && (type(la[i]) == "float" || type(la[i]) == "string")) {
                if (la[i] != lb[i]) {
                    out = 0
                    i = len(la)
                }
            } else if (type(la[i]) == "list" && type(lb[i]) == "list") {
                if (!compare(la[i], lb[i])) {
                    out = 0
                    i = len(la)
                }
            } else {
                out = 0
                i = len(la)
            }
        }
    }
    return out
}

float reduce(list l) {
    float i, out
    out = 0
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) == "float") {
            out += l[i]
        } else if (type(l[i]) == "list") {
            float temp
            temp = reduce(l[i])
            out += temp
        }
    }
    return out
}

string ltos(list l_) {
    string out
    float i
    out = ""
    for (i = 0; i < len(l); i += 1) {
        out = out + l[i] 
        if (i < len(l) - 1) {
            out = out + " "
        }
    }
    return out
}

list fpos(list l, float e) {
    float i, j
    list out
    j = 0
    for (i = 0; i < len(l); i += 1) {
        if (l[i] == e) {
            out[j] = i
            j += 1
        }
    }
    return out
}


list spos(list l, string e) {
    float i, j
    list out
    j = 0
    for (i = 0; i < len(l); i += 1) {
        if (l[i] == e) {
            out[j] = i
            j += 1
        }
    }
    return out
}

list lpos(list l, list e) {
    float i, j
    list out
    j = 0
    out = {}
    for (i = 0; i < len(l); i += 1) {
        if (ltos(l[i]) == ltos(e)) {
            out[j] = i
            j += 1
        }
    }
    return out
}

list modsets(list l, list s) {
    float i, j
    list out
    for (i = 0; i < len(l); i += 1) {
        list sl
        for (j = 0; j < len(s); j += 1) {
            sl[j] = l[(s[j] + i) % len(l)]
        }
        out[i] = sl
    }
    return out
}

list thin(list l) {
    float i, j, k
    list lout
    k = 1
    lout = {l[0]}
    for (i = 1; i < len(l); i += 1) {
        float count
        count = 0
        for (j = 0; j < len(lout); j += 1) {
            if ((type(l[i]) == "float" || type(lout[j]) == "string") && type(lout[j]) == type(l[i])) {
                if (l[i] == lout[j]) {
                    count += 1
                }
            } else if (type(l[i]) == "list" && type(lout[j]) == type(l[i])) {
                if (compare(l[i], lout[j])) {
                    count += 1
                } 
            }
        }
        if (count == 0) {
            lout[k] = l[i]
            k += 1
        }  
    }
    return lout
}

list indexremap(list l) {
    float i, j, k
    list dict, out
    dict = thin(l)
    out = {}
    k = 0
    for (j = i; j < len(l); j += 1) {
        for (i = 0; i < len(dict); i += 1) {
            if (type(dict[i]) != "list" && type(dict[i]) == type(l[j])) {
                if (dict[i] == l[j]) {
                    out[k] = i
                    k += 1
                }
            } else if (type(dict[i]) == "list" && type(dict[i]) == type(l[j])) {
                if (compare(dict[i], l[j])) {
                    out[k] = i
                    k += 1
                } 
            }
        }
    }
    return out
}

list flat(list l) {
    float i, j
    list out
    j = 0
    for (i = 0; i < len(l); i += 1) {
        if (type(l[i]) != "list") {
            out[j] = l[i]
            j += 1
        } else {
            l[i] = flat(l[i])
            out = merge(out, l[i])
            j += 1
        }
    }
    return out
}

list markovBuild(list data, float order) { // condensed trial
    float i, j, k
    list matrix, postrans, ngrams, dict
    ngrams = frames(data, order, 1) // sequence of ngrams
    dict = thin(ngrams) // dictionary of unique states
    postrans = {} // matrix of possible states
    matrix = {} // matrix of transition/probabilities

    // populate a list (postrans) with lists of possible transitions for each unique ngram
    for (i = 0; i < len(dict); i += 1) { // iterate through each unique state
        current = dict[i] // each unique state
        list pstates, countList 
        pstates = {} // possible states
        countList = {} // count/number of repeated transitions per state
        k = 0 // index of possible states
        for (j = 0; j < len(ngrams); j += 1) { // iterate through ngram sequence
            if (compare(current, ngrams[j])) { // is current state = current ngram?
                if (j + 1 < len(ngrams)) { // filter out indexing past number of ngrams in sequence
                    pstates[k] = ngrams[j + 1] // include next ngram in sequence as possible transition
                    k += 1
                }
            }
        }
        for (j = 0; j < len(dict); j += 1) { // count repeated transition for each unique ngram
            float count, m
            count = 0
            list ngr
            ngr = dict[j] // current unique ngram
            for (k = 0; k < len(pstates); k += 1) { // iterate through possible transition states 
                if (compare(pstates[k], ngr)) { // if current possible state = unique ngram
                    count += 1 // add to count
                }
            }
            countList[j] = count // include final count for given state
        }
        if (reduce(countList) == 0) { // if no possible transitions
            float c
            for (c = 0; c < len(countList); c += 1) { // populate with 1 for equal probability
                countList[c] = 1
            }
        }
        countList = countList / reduce(countList) // get probabilities as decimals (sum = 1)
        matrix[i] = countList // assign probability to each state
    }
    return  {dict, matrix}
}

list markovRun(list dict, list m, float init, float times) {
    float i, j, k, s
    list pl, out, e
    s = init // initial state index
    k = 1 // output index
    e = dict[s] // element in output
    out = {e[0]} // output list
    for (i = 0; i < times - 1; i += 1) {
        list tpl // temporary list
        tpl = {}
        tr = m[s] // transition row
        for (j = 0; j < len(tr) * 2; j += 2) { // format list for pickwrand()
            tpl[j] = j/2 // state index
            tpl[j + 1] = tr[j/2] // transition probability
        }
        s = pickwrand(tpl) // weighted random choosing of new state index
        e = dict[s]
        out[k] = e[0]
        k += 1
    }
    return out
}

list markov(list d, float o, float t) {
    list l
    l = markovBuild(d, o)
    l = markovRun(l[0], l[1], 0, t)
    return l
}

float ftomel(float f) {
    return 1125 * ln(1 + (f/700))
}

float meltof(float m) {
    return 700 * (exp(m/1125) - 1)
}

struct Complex {
    float re, float im
}

list dft(list s) {
    float N, n, k, thresh, theta
    list out
    N = len(s)
    thresh = exp(-10)
    theta = -2*PI
    for (k = 0; k < N/2; k += 1) {
        struct Complex val
        val.re = 0
        val.im = 0
        for (n = 0; n < N; n += 1) {    
            val.re = val.re + s[n] * cos((theta*n*k)/N)
            val.im = val.im + s[n] * sin((theta*n*k)/N)
        } 
        val.re = (val.re*2) / N
        val.im = (val.im*2) / N
        if (abs(val.re) < thresh) {
            val.re = 0
        }
        if (abs(val.im) < thresh) {
            val.im = 0
        }
        out[k] = val
    }
    return out
}
//print_on(1)
list icgen(list icList, float min, float max) {
    list out
    float i, j, last
    i = 1
    j = 0
    out = {min}
    while (out[len(out) - 1] < max) {
        ic = icList[j]
        out[i] = out[i-1] + ic
        i += 1
        j = (j + 1) % len(icList)
    }
    return out
}


// string lsys(list rules, string axiom, float gen) {
//     list alpha, prod
//     float i, g
//     string out
//     out = ""
//     rules = mattrans(rules)
//     alpha = rules[0]
//     prod = rules[1]
//     for (i = 0; i < len(axiom); i += 1) {
//         list tmpindex
//         tmpindex = spos(alpha, axiom[i])
//         if (len(tmpindex) > 0) {
//             out = out + prod[tmpindex[0]]
//         }
//     }
//     gen -= 1
//     if (gen > 0) {
//         out = lsys(rules, out, gen)
//     } else {
//         return out
//     }
//     return out
// }

list random_array(float n) {
    list out
    float sum, i
    out = {}
    sum = 0
    for (i = 0; i < n; i += 1) {
        out[i] = random()
        sum += out[i]
    }
    return out / sum
}







