## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Functions to manage (set & get) a matrix and its inverse
# cache the inverse and only recompute when necessary

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(m){ 
    mat <<- m
    inv <<- NULL
  }
  get <- function(){ mat }
  setInv <- function(inverse){ inv <<- inverse }
  getInv <- function(){ inv }
  list(set=set, get=get, setInv=setInv, getInv=getInv)
}


## Write a short comment describing this function
#Compute the inverse of a matrix (assume it is invertable)
cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if(!is.null(inv))
    message('getting cached data')
  else {
    inv <- solve(x$get(), ...)
    x$setInv(inv)
  }
  inv
}
