Assignment 5
================

## Matrix Definitions

``` r
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)
```

## Is it square?

``` r
dim(A) #YES
```

    ## [1] 10 10

``` r
dim(B) #NO
```

    ## [1]  10 100

## Inverse & Determinant: OH NO! IT’S SINGULAR.

``` r
solve(A)
```

    ## Error in `solve.default()`:
    ## ! Lapack routine dgesv: system is exactly singular: U[6,6] = 0

``` r
det(A)
```

    ## [1] 0

## Handle Errors

``` r
canyoudigit <- function(M) {
  solve_result <- tryCatch(
    expr = {
      solve(M)
      message("Solve Result: ", solve(M))
    },
    error = function(e)
      {message("Not gonna work, buck-o.")
      message("Solve Error:",e$message)})
  det_result <- tryCatch(
    expr = {
      det(M)
      message("Determinant Result: ",det(M))
    },
    error = function(e)
      {message("Not gonna work, buck-o.")
      message("Determinant Error:",e$message)})
  }
```

``` r
canyoudigit(A)
```

    ## Not gonna work, buck-o.

    ## Solve Error:Lapack routine dgesv: system is exactly singular: U[6,6] = 0

    ## Determinant Result: 0

``` r
canyoudigit(B)
```

    ## Not gonna work, buck-o.

    ## Solve Error:'a' (10 x 100) must be square

    ## Not gonna work, buck-o.

    ## Determinant Error:'x' must be a square matrix
