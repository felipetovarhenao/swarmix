/*
	Pending docstring
*/
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