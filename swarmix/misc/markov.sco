/*
	Pending docstring
*/
list markov(list d, float o, float t) {
    list l
    l = markovBuild(d, o)
    l = markovRun(l[0], l[1], 0, t)
    return l
}