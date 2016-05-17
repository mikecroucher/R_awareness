library(tictoc)

# Generate random square matrix of size N x N
generate_matrix <-function(N){
    NCols <- N
    NRows <- N
    
    out <-matrix(runif(NCols*NRows), ncol=NCols) 
    
}

N = 10000

#Create two NxN matrices
a = generate_matrix(N)
b = generate_matrix(N)

#Time how long it takes to multiply them
tic()
time=system.time(a %*% b)
toc()

