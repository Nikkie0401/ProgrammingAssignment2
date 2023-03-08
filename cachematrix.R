## Put comments here that give an overall description of what your
## functions do

## This function create a special "matrix"

# this function create a special maxtrix that can cached its inverse.
# # Define a function called makeCacheMatrix that takes a matrix as an argument and returns a list of functions that can manipulate the matrix and its inverse
makeCacheMatrix <- function(matrix = matrix()) {
     ## Initialize a variable called inverseMatrix to store the inverse of the matrix
     inverseMatrix <- NULL
     ## Define a function called setMatrix 
     setMatrix <- function(newMatrix) {
          ## Use the "<<" operator to assign the new matrix to the global environment
          matrix <<- newMatrix
          inverseMatrix <<- NULL
     }
     ## Define a function called getMatrix to retrieve the current matrix from the cache
     getMatrix <- function() matrix
     ## Define a function called setInverse to update the inverse of the matrix in the cache
     setInverse <- function(inverse) inverseMatrix <<- inverse
     ## Define a function called getInverse to retrieve the current inverse of the matrix from the cache
     getInverse <- function() inverseMatrix
     ### Return a list of the functions in the cache
     list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)

}


## This function compute the inverse of the matrix returned by makeCacheMatrix above

cacheSolve <- function(matrix, ...) {
     ## Define a function called 'cacheMatrix' to calculate and cache the inverse of the input matrix
     cacheMatrix <- function(matrix, ...) {
     ## Check if the inverse of the matrix is already cached
          inverseMatrix <- matrix$getInverse()
          if(!is.null(inverseMatrix)) {
          message("getting cached data")
          return(inverseMatrix)
     }
     ## If the inverse is not cached, calculate it using 'solve' function and cache it using 'setInverse' function
          data <- matrix$getMatrix()
          inverseMatrix <- solve(data, ...)
          matrix$setInverse(inverseMatrix)
          inverseMatrix
     }
     ## Call the 'cacheMatrix' function to get the inverse of the input matrix
     cacheMatrix(matrix, ...)
}
