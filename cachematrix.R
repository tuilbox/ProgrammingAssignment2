# The following two funcitons work together to retrieve a cacluation, if it exists.
# Otherwise, it will calculate the value. In this instance, the task is an inverted matrix.
# 

# The first function will create a matrix, calcualte the inverse and store it for later use.

makeCacheMatrix <- function(x = matrix()) {
       iM <- NULL
       set<- function (w) {
              x <<- w
              iM <<- NULL
       }
       get <- function() x
       setIM <-function(solve) iM<<-solve
       getIM <-function () iM
       list (set = set, get = get,
             setIM = setIM,
             getIM = getIM)
}


# The second function will check to see if there is a stored value, and if so retrieve it;
# if not, it will compute the inverse and then store it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'       
              iM <- x$getIM()
              if(!is.null(iM)) {
                     message ("getting cached data")
                     return (iM)
              }
              data <- x$get()
              iM<-solve(data, ...)
              x$setIM(iM)
              iM
}    