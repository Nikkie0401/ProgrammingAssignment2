## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrix = matrix()) {
	⁃	makeMatrix <- function( matrix=matrix()) {     inverseMatrix() <- NULL     setMatrix <- function(newMatrix) {          matrix <<- newMatrix          inverseMatrix <<- NULL     }     getMatrix <- function() matrix     setInverse <- function(inverse) inverseMatrix <<- inverse     getInverse <- function() inverseMatrix     list(set = set, get = get,          setInverse = setInverse,          getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheMatrix <- function(matrix, ...) {     inverseMatrix <- matrix$getInverse()     if(!is.null(inverseMatrix)) {          message("getting cached data")          return(inverseMatrix)     }     data <- matrix$getMatrix()     inverseMatrix <- solve(data, ...)     matrix$setinverseMatrix(inverseMatrix)     inverseMatrix}
}
