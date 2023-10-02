PI = 3.14159265359
TWO_PI = 6.28318530718

e = 2.71828182845

INF = 1.e37

// Precomputed factorials for 2^(0 through 9) for faster sin/cos calculation
_PRECOMP_FACTORIALS = {
    {1, 2, 24, 720, 40320, 3628800, 479001600, 87178291200, 2.0922789888e+13, 6.40237370573e+15}, 
    {1, 6, 120, 5040, 362880, 39916800, 6227020800, 1.307674368e+12, 3.55687428096e+14, 1.21645100409e+17}
}