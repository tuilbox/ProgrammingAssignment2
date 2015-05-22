# The following two funcitons work together to retrieve a cacluation, if it exists
# otherwise, it will cacluate the value. In this instance, the task is an inverted matrix.
# 

# The first function will create a matrix, calcualte the inverse and store it for later use.

makeCacheMatrix <- function(x = matrix()) {
       iM <- NULL
       set<- function (w) {
              M <<- w
              iM <<- NULL
       }
}


# The second function will check to see if there is a stored value, and if so retrieve it
# If not, it will compute the inverse and then store it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeMatrix <- matrix(r,c){
      
       get <- function() v
       setmean <-function(mean) iM<<-mean
       getmean <-function () iM
       list (set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}