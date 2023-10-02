/**
 * @brief Returns a random element from list x, with probability weights w. This is a type-agnostic wrapper for pickwrand
 * 
 * @param x 
 * @param w 
 * @return list 
 */
list wrandchoice(list x, list w) {
    return x[pickwrand(flat(mattrans({iter(len(x), _thru), w})))]
}
