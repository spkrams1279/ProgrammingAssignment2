## Week3: Programming assignment to create functions that will create matrix and return the cached inverted matrix


## Below function will return a list that will help user to get/set matrix and get/set inverted matrix

makeCacheMatrix <- function(x = matrix()) {
        invertedMatrix <- NULL
        set <- function(y){
                x <- y
                invertedMatrix <<- NULL
        }
        get <- function(){
                x
        }
        setInvertedMatrix <- function(inverted){
                invertedMatrix <<- inverted
        }
        getInvertedMatrix <- function(){
                invertedMatrix
        }
        list(get = get, set = set, getInvertedMatrix = getInvertedMatrix, setInvertedMatrix = setInvertedMatrix)
}


## Below function will get a matrix created using the above function, invert that matrix and store it. 
## this functon will try to retrieve the inverted matrix from cache first before calling the solve function to invert

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverted <- x$getInvertedMatrix()
        if(!is.null(inverted)){
                message("getting from cached data")
                return(inverted)
        }
        inverted <- solve(x$get(), ...)
        x$setInvertedMatrix(inverted)
        inverted
}
