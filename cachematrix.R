## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Create a list that catch the inverse matrix
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse matrix
#get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }

  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
#use the $getinv to check if the matrix has the cached inverse matrix, then load the inversed matrix. 
#if the inverse is not cached, then compute the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       #check if the matrix has the inverse   
      inv <- x$getinv()
      if(!is.null(inv)) {
              message("getting cached data")
              return(inv)
      }
      #if the inverse is not calculated, then compute the inverse
      data <- x$get()
      inv <- solve(data)
      x$setinv(inv)
      inv
}
