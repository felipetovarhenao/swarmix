/**
 * @brief Generates an interval cycle with intervals icList from pitch min to pitch max
 * 
 * @param icList 
 * @param min 
 * @param max 
 * @return list 
 */
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
//         tmpindex = strindex(alpha, axiom[i])
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