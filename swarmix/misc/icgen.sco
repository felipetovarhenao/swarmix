/**
 * @brief Generates an interval cycle with intervals x from pitch a to pitch b
 * 
 * @param x 
 * @param a 
 * @param b 
 * @return list 
 */
list icgen(list x, float a, float b) {
    list y
    float i, j
    i = 1
    j = 0
    y = {a}
    while (y[len(y) - 1] < b) {
        ic = x[j]
        y[i] = y[i-1] + ic
        i += 1
        j = (j + 1) % len(x)
    }
    return y
}

// string lsys(list rules, string axiom, float gen) {
//     list alpha, prod
//     float i, g
//     string y
//     y = ""
//     rules = mattrans(rules)
//     alpha = rules[0]
//     prod = rules[1]
//     for (i = 0; i < len(axiom); i += 1) {
//         list tmpindex
//         tmpindex = strindex(alpha, axiom[i])
//         if (len(tmpindex) > 0) {
//             y = y + prod[tmpindex[0]]
//         }
//     }
//     gen -= 1
//     if (gen > 0) {
//         y = lsys(rules, y, gen)
//     } else {
//         return y
//     }
//     return y
// }