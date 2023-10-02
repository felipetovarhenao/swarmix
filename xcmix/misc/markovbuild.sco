/* 
	Pending docstring
*/
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
            if (deepeq(current, ngrams[j])) { // is current state = current ngram?
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
                if (deepeq(pstates[k], ngr)) { // if current possible state = unique ngram
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