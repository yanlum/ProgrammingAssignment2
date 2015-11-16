## Matrix inversion is usually a costly computational process, and storing the returned value of the
## computed result would be quite beneficial depending on the situation, rather than calculating for
## the inversion repeatedly, hence below are a pair of functions that cache the inverse of a matrix.

## makeCacheMatrix creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        ## create an empty matrix for the inverse matrix
	inv <- NULL
	
	## set the value of the matrix
	set <- funtion(y) {
		x <<- y
		inv <<- NULL
	}
	
	## get the value of the matrix
	get <- function() x
	
	## set the value of the inverse matrix
	setInv <- function(inverse) inv <<- inverse

	## get the value of the inverse matrix
	getinv <- function() inv
	list(set = set, get = get, setInv = setInv, getInv = getInv)
}

## cacheSolve computes and returns the inverse of the special "matrix" returned by makeCacheMatrix,
## if the inverse has already been calculated and that the matrix has remained the same, cacheSolve
## would simply retrieve the inverse of the special "matrix" from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ## inv is passed the result of getInv() function
	inv <- x$getInv()
	
	## if inverse of matrix is already stored in cache
	if(!is.null(inv) {
		message("getting cached data")
		return(inv)
	}
	
	## retrieve data of matrix
	data <- x$get()

	## solve() function is used to return the inverse of matrix
	inv <- solve(data)

	## set the value of the inverse matrix
	x$setInv(inv)

	## return inv
	inv
}
