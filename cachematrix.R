## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function (var1 = matrix()){
  cache1<-NULL
  set_mval <-function(var2){
    var1<<-var2
    cache1<<-NULL
  }
  get_mval<-function() var1
  setinv<-function(inverse) cache1<<-inverse
  getinv<-function() cache1
  list(set_mval = set_mval,
       get_mval = get_mval,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <-function(var1,...){
  cache1<-var1$getinv()
  if (!is.null(cache1)){
    return(cache1)
  }
  newm<-var1$get_mval()
  cache1<-solve(newm, ...)
  var1$setinv(cache1)
  cache1
}
