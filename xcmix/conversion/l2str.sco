/**
 * @brief Recursively converts a list into a string
 * 
 * @param l list
 * @return string 
 */
string l2str(list l) {
    string out
    float i
    out = "["
    for (i = 0; i < len(l); i += 1) {
        string s
        s = ""
        if (type(l[i]) == 'list') {
            s = l2str(l[i])
        } else {
            s = s + l[i]
        }
        out = out + s
        if (i < len(l) - 1) {
            out = out + " "
        }
    }
    out = out + "]"
    return out
}