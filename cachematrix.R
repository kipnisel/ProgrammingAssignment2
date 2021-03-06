## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invrs <- NULL
    set <- function(y) {
    x <<- y
    invrs <<- NULL
    }
    get <- function() x
    setinvrs <- function(inv) invrs <<- inv
    getinvrs <- function() invrs
    list(set = set, get = get,
         setinvrs = setinvrs,
         getinvrs = getinvrs)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invrs <- x$getinvrs()
    if(!is.null(invrs)) {
      message("getting cached data")
      return(invrs)
    }
    data <- x$get()
    invrs <- solve(data, ...)
    x$setinvrs(invrs)
    invrs
}
