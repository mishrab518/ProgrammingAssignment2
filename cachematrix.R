## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                             
  set <- function(y) {                
    x <<- y                            
    inv <<- NULL                        
  }
  
  get <- function() x                     
  setinverse <- function(inverse) inv <<- inverse  
  getinverse <- function() inv                    
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse omakeCacheMatrix <- function(x = matrix()) {
  
  ## return: a list containing functions to
  
  ##1. set the matrix 2. get the matrix 3. set the inverse 4.get the inverse
  
  ##this list is used as the input to cacheSolve()
  
  m=NULL
  
  set=function(y)
    
  {
    
    x<<-y
    
    m<<-NULL
    
  }
  
  get=function()x
  
  setinverse=function(inverse) m<<-inverse
  
  getinverse=function() m
  
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
  
  
}





## Write a short comment describing this function



cacheSolve <- function(x, ...) {
  
  ## x: output of makeCacheMatrix()
  
  ## return: inverse of the original matrix input to makeCacheMatrix()
  
  ## Return a matrix that is the inverse of 'x'
  
  m<-x$getinverse()
  
  # if the inverse has already been calculated
  
  if(!is.null(m))
    
  {
    
    # get it from the cache and skips the computation
    
    message("getting cached data")
    
    return(m)
    
  }
  
  #otherwise calculates the inverse
  
  data=x$get()
  
  m=solve(data,...)
  
  # sets the value of the inverse in the cache via the setinverse function
  
  x$setinverse(m)
  
  m
  
}


