# The following two funcitons work together to retrieve a cacluation, if it exists.
# Otherwise, it will calculate the value. In this instance, the task is an inverted matrix.
# 

# The first function will create a matrix, calcualte the inverse and store it for later use.

makeCacheMatrix <- function(x = matrix(1:4, nrow=2, ncol=2)) {
       iM <- NULL
       set<- function (w) {
              x <<- w
              iM <<- NULL
       }
       get <- function() x
       setiM <-function(solve) iM<<-solve
       getiM <-function () iM
       list (set = set, get = get,
             setiM = setiM,
             getiM = getiM)
}

   
# The second function will check to see if there is a stored value, and if so retrieve it;
# if not, it will compute the inverse and then store it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'       
              iM <- x$getiM()
              if(!is.null(iM)) {
                     message ("getting cached data")
                     return (iM)
              }
              data <- x$get()
              iM<-solve(data, ...)
              x$setiM(iM)
              iM
} 