A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)
dim(A)
dim(B)
solve(A)
det(A)
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
canyoudigit(A)
canyoudigit(B)
