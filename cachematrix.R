## Creates the inverse of a matrix and caches the result

## createa a function to store a matrix so that it can be inverted at a later stage

makeCacheMatrix <- function(x = matrix()) {
  inverse  <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) {
    inverse <<- inv
  }
  getinverse <- function() inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## calculate the inverse of a matrix and cache the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i))
  {
    print("getting cached inverse")
    return(i)
  }
  inverse = solve(x$get(), ...)
  x$setinverse(inverse)
  inverse
}
