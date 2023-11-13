
list getkdtree(list x, float d) {
    float N, ax, m
    list p, lr 
    N = len(x)
    if (N == 0) {
        return {}
    }
    ax = d % len(x[0])
    m = trunc(N/2)
    p = sort(deepcopy(x))
    lr = slice(p, N)
    return {
        p[m],
        getkdtree(lr[0], d+1),
        getkdtree(lr[1], d+1),
    }
}