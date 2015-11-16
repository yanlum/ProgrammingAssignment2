## Matrix inversion is usually a costly computational process, and storing the returned value of the
## computed result would be quite beneficial depending on the situation, rather than calculating for
## the inversion repeatedly, hence below are a pair of functions that cache the inverse of a matrix.

## makeCacheMatrix creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve computes and returns the inverse of the special "matrix" returned by makeCacheMatrix,
## if the inverse has already been calculated and that the matrix has remained the same, cacheSolve
## would simply retrieve the inverse of the special "matrix" from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
