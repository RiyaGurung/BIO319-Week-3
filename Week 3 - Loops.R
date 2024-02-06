#making a loop that runs 5 times and each time it prints the value of i
for(i in 1:5) {
  print(i)
}
#so 2:10 just means the numbers 2-10
x <- 0
for(i in 2:10){
  x <- x + i
} # here we are adding the value of x (0) to the value of i which varies from 2-10
print(x)

#Q1
x <- 0
for(i in 1:10){
  x <- x + i
  print(x)
} 

#Q2
x <- 0
for(i in 5:22){
  x <- x + i
} 
print(x)

#Q3
x <- 0
for(circle in 1:10){
  x <- x + circle
} 
print(x)

#Q4
for(i in 10:20){
  print(i^2)
}
#2.4
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}
for(donkey in shrek_quote){
  print(toupper(donkey))
} #checking if it prints the sam result without the numeric vectors

#a = the iterable, b = function that makes the object capital letter, c = means 1 - the length of the object
#d = the vector, e = selecting the ones that have been used by the iterable

