A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)
A + B
A - B
D <- diag(c(4, 1, 2, 3))
D
M <- diag(rep.int(3,4))
M <- rbind(c(rep.int(1,4)),M)
M <- cbind(c(3,rep.int(2,4)),M)
M
M <- diag(rep.int(3,5))
M[1,2:5] <- rep.int(1,4)
M[2:5,1] <- rep.int(2,4)
M
