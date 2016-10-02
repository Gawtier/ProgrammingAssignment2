## These two functions are made for the course R programming on Coursera.

## This function creates a list containing four functions :
## A setter for the value of the matrix (set())
## A getter for the value of the matrix (get())
## A setter for the inverse of the matrix (setInverse())
## A getter for the inverse of the matrix (getInverse())

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) i <<- inv
  getInverse <- function() i
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function returns the inverse of a matrix created by the previous function. 
## It will first check if there is a cached inverse. If so, print it. If not, calculate it.

cacheSolve <- function(x, ...) {

  inv <- x$getInverse()
  
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}

## Give it a try ! 
## I'll take all the feedback. 
