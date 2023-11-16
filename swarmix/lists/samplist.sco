/**
 * @brief Returns an interpolated value from a list with depth 1 or 2
 * 
 * @param x list
 * @param i float index
 * @return list 
 */
list samplist(list x, float i) {
    float ii, fi
    ii = trunc(i)
    fi = i-ii
    print(ii, type(x[ii]))
    if (type(x[ii]) == "list" && "list" == type(x[ii+1])) {
        return vecadd(x[ii]*(1-fi), x[ii+1]*fi)
    } else if (type(x[ii]) == "float" && "float" == type(x[ii+1])) {
        return x[ii]*(1-fi) + x[ii+1]*fi
    }
    print("mixed array error")
    exit()
    return 1
}
