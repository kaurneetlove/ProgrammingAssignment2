## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Function to create a special matrix object that can cache its inverse
makeCacheMatrix <- function(mat = matrix()) {
  inverse <- NULL

  # Function to set the matrix value
  set <- function(newMatrix) {
    mat <<- newMatrix
    inverse <<- NULL  # Reset the cached inverse
  }

  # Function to get the matrix value
  get <- function() {
    mat
  }

  # Function to calculate and cache the inverse
  cacheSolve <- function() {
    if (!is.null(inverse)) {
      cat("Getting cached data\n")
      return(inverse)
    }

    cat("Calculating the inverse and caching\n")
    inverse <- solve(mat)
    return(inverse)
  }

  # Return a list of functions to access and modify the matrix
  list(set = set, get = get, cacheSolve = cacheSolve)
}
