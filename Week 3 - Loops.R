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

#3
#the nchar() function calculates the size of a string 

wordswords <- vector()
input <- c('buzz','cross','broads','fore','')
for(i in 1:length(input)){
  wordswords[i] <- paste(input[i],'word', sep = '')
}
print(wordswords)

#4 - conditional statements
#4.1
nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in nums){
  if(i %% 2 == 0){
    print(paste(i, ' is divisible by 2.', sep = ''))
  }
}
#4.2
nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in nums){
  if(i %% 2 == 0){
    print(paste(i, ' is divisible by 2.', sep = ''))
  }else{
  print(paste(i,' is not divisible by 2.', sep = ''))
  }
}
#5
numbers <- c(1,1,3,5,8,13,21) #Q1
for (i in numbers) {
  print(sqrt(i))
}
print(sqrt(numbers))#does the same thing as with the for function





