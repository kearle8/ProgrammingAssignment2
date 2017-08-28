## This is a function that creates a special matrix
## that is really a list containing functions to:

## Set the value of the matrix
## Get the value of the matrix
## Set the value of the inverse of the matrix
## Get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y){
  x <<- y
  i <<- NULL
}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i 
list(
  set = set,
  get = get,
  setinverse = setinverse,
  getinverse = getinverse)
}


## This function calculates the inverse of the above function
## first it checks to see if the inverse has already been calculated
## if so, it will get from the cache, if not, it will compute the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
  return(i)
}
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
i
}