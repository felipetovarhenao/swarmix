/*
	Pending documentation
*/
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