## Functions to create a matrix object that can cache its inverse



## cache the matrix


makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        set <- function(y){

                x <<- y
                m <<- NULL

        }

        get <- function() x

        setmatrix <- function(solve) m <<- solve
        
        getmatrix <- function() m
        
        list(set = set, 
        get = get,
        setmatrix = setmatrix,
        getmatrix = getmatrix)
                
}



## inverse the matrix


cacheSolve <- function(x, ...) {

        m <- x$getmatrix()

        if (!is.null(m)){

                message("Retrieving cached matrix!")
        
                return(m)
        
        }

        matrix <- x$get()
        
        m <- solve(matrix, ...)
        
        x$setmatrix(m)
        
        m
}