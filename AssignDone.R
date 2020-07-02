
## The function that is presented under can convert a matrix into a "matrix"
## object which its inverse can be cached so that we needn't compute he inverse
## every time we need it.


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function what it does is that it takes the special matrix created in 
## makeCacheMatrix and calculates its inverse. Using if() statement we can 
## get the inverted matrix from the cache and return it (if it has already been calculated), or else, 
## calculate the inverse in this same function and then it saves it in cache and is also returned.

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(j)) {
                message("getting cached data")
                return(i)
                # Here the inverse matrix is retrived from cache
        }
        matrix <- x$get()
        i <- solve(matrix, ...)
        x$setInverse(i)
        m
        ## Return a matrix that is the inverse of 'x', here it calculates the
        ## inverse as it is not in cache.