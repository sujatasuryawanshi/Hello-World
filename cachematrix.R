## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
}
makeCacheMatrix <- function(x = matrix()){
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() {x} ## The get function returns value of the matrix argument
setInverse <- function(inverse) {inv <<- inverse} ## This will assigns value of the inv in the parent environment
getInverse <- function() {inv} ## Gets the value of the inverse where applicable
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## Write a short comment describing this function
##If the inverse has already been calculated (and the matrix does not change),then cacheSolve will retrieve the inverse from the cache
cacheSolve <- function(x, ...){
inv <- x$getInverse()
if(!is.null(inv)){
message("getting cache data")
return(inv)
}
  
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}

