/**
 * @brief Returns a random element from list x. This is a type-agnostic wrapper for pickrand
 * 
 * @param x list
 * @return list 
 */
list randchoice(list x) {
    return x[pickrand(iter(len(x), _thru))]
}