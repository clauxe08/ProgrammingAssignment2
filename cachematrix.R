## Put comments here that give an overall description of what your
## The first function creates a matrix, the second function first evaluates
## the inverse has already been calculated.

## This function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
  invertida <- NULL
  set <- function(y){
    x <<- y
    invertida <<- NULL
  }
  get <- function() {x}
  setinverse <- function(inverse) {invertida <<- inverse}
  getinverse <- function() {invertida}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Evaluates if the inverse has been calculated, then calculates the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invertida <- x$getinverse()
  if(!is.null(invertida)){
    message("getting cached data")
    return(invertida)
  }
  matriz <- x$get()
  invertida <- solve(matriz, ...)
  x$setinverse(invertida)
  invertida
}
