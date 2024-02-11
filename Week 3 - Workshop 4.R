#2 - while loops
x <- 0.999
while(x > 0.5){
  x <- x^2
  print(x)
}
#3 - functions 
#this is just an example of how function is used with powers 
powers <- function(x){
  y <- x ^ 2
  z <- x ^ 3
  return(c( y, z))
}
powers(1) # output would be '1 1'
powers(30) # output would be '900 27000'

#3.1 -


#this is done using the grep function in a different way than before - its easier but don't understand how to get to this solution
month <- function(x){
 return(grep(x,month.name))
}
month('March')

month <- function(x){
  y <- match(x, month.name)
  return(y)
} #this is another way to do it using the 'match' function 
month('March')

month <- function(i){
 months <- c()
 return(y,z)
}
month('January','February')

converter2 <- function(month_vec){
  months <- month.name #Make vector with months
  output <- vector(length = length(month_vec)) #Empty vector of input vector length
  for (i in 1:length(month_vec)) {
    output[i] <- grep(month_vec[i], months)
  }
  return(output)
}

converter2('March')

#3.2 - default inputs

#incorrect starting code
default <- function(x, y ='Bird'){
  return (paste(y, 'is the word'))
}
default()

default <- function(x){
  output <- (paste(x, ' is the word', sep = ''))
  return(output)
}
default('Bird')
