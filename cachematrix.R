## Function to cache inverse of matrix


## matrix to cache its inverse
cache_matrix <- function( mat = matrix() ) {

    i<- NULL

    ## Method to set the matrix
    set <- function( matrix ) {
            mat <<- matrix
            i<<- NULL
    }

    ##getter for  the matrix
    get <- function() {

    	m
    }

    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Method to find inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## To compute inverse of the special matrix returned by "cache_matrix"

cacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}
