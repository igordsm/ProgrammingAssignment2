## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function (y) {
    x <<- y
    inv <<- NULL
  }
  get = function () x
  
  getinv = function () inv
  setinv = function (iv) {
    inv <<- iv
  }
  list(set = set, get = get, getinv = getinv, setinv = setinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv = x$getinv()
  if (!is.null(inv)) {
    message("cache!")
    return (inv)
  } else {
    x_data = x$get()
    inv = solve(x_data)
    x$setinv(inv)
    inv
  }
}
