#2.1 - this is a basic loop that makes i the value of numbers from 1-5 and runs the code between the curly brackets each time it loops.
for(i in 1:5) {
  print(i)
}
#2.2 - i is called the 'iterable' and can be given any value 

x <- 0
for(i in 2:10){
  x <- x + i
} # here we are adding the value of x (0) to the value of i which varies from 2-10
print(x)

#q1
x <- 0
for(i in 1:10){
  x <- x + i
  print(x)
} #putting print outside will just give you the     value of x but putting it inside will give you    the values of x after every loop 

#q2
x <- 0
for(i in 5:23){
  x <- x + i
  print(x)
} #done with numbers of my choosing

#Q3
x <- 0
for(circle in 1:10){
  x <- x + circle
} #changing the name of i gives you the same        result
print(x)

#Q4
for(i in 10:20){
  print(i^2)
} #printing the square of i in each loop 

#2.4 - looping non-integer vectors 
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(donkey in shrek_quote){
  print(toupper(donkey))
} 
#so here we can do the same thing but with a      numeric vector 
for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
} 

#a = the iterable, b = function that makes the object capital letter, c = means 1 - the length of the object
#d = the variable name of the vector, e = subsetting the iterable from the variable 

#3 - saving outputs 
#the nchar() function calculates the size of a string 
output <- vector()
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i])
}
print(output) 
#you can also do:
output <- vector()
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in input){
  output[i] <- nchar(i)
}
print(output)
#so sometimes you need to save your outputs of your loop using an empty output vector

wordswords <- vector()
words <- c('buzz','cross','broads','fore','')
for (i in 1:length(words)){
  wordswords[i]<-paste(words[i],'word',sep = '') 
} # remember to subscript i otherwise it will        only print the first element of the vector 
print(wordswords)

#4 - Conditional statements
#4.1 - the 'if' function gets R to run only if          the code within it is TRUE
#logical expressions can be used to make if       statements 
nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in nums){
  if(i %% 5 == 0 & i %% 2 == 0){
    print(paste(i, ' is a multiple of 5 and is even', sep = ''))
  }
}
#4.2 - 'else' can be used TO define what code to         run if the conditional is FALSE
for(i in nums){
  if(i %% 5 == 0 & i %% 2 == 0){
    print(paste(i, ' is a multiple of 5 and is even', sep = ''))
  } else {
    print(paste(i, ' is not a multiple of 5 or/and is not even', sep = ''))
  }
}
#4.3 - we can add complexity to our commands            using else if
for(i in nums){
  if(i %% 5 == 0 & i %% 2 == 0){
    print(paste(i, ' is a multiple of 5 and is even', sep = ''))
  } else if (i %% 5 != 0 & i %% 2 == 0){
    print(paste(i, ' is not a multiple of 5 but is even', sep = ''))
  } else if (i %% 5 == 0 & i %% 2 != 0){
    print(paste(i, ' is a multiple of 5 but not even', sep = ''))
  } else {
    print(paste(i, ' is not a multiple of 5 and is not even', sep = ''))
  } # for else we can change the statement
}

#5
#q1
nums <- c(1,1,3,5,8,13,21)
for (i in nums){
  print(sqrt(i)) # square root
}
#q2
quote <- c('May','the','force','be','with','you')
for (i in quote){
  if(nchar(i) == 4 | nchar(i) == 5 | nchar(i) == 6){ # without this bit we would not get the other       words that do not follow the following           conditions
    print(i)
    } else if (nchar(i) < 4){
    print('no')
  }else if (nchar(i) > 6){
    print('harry potter')
  }
}
#q3 - remember to subscript i for outputs girly 
garbled_film_quote <- vector()
for (i in quote){
  if(nchar(i) == 4 | nchar(i) == 5 | nchar(i) == 6){ # without this bit we would not get the other       words that do not follow the following           conditions
    garbled_film_quote[i] <- print(i)
  } else if (nchar(i) < 4){
   garbled_film_quote[i] <- print('no')
  }else if (nchar(i) > 6){
   garbled_film_quote[i] <- print('harry potter')
  }
}
garbled_film_quote

#6 - making a NESTED for loop 

alphabet <- matrix(data = c('A','B','C','D','E','F','G','H',
                            'I','J','K','L','M','N','O','P',
                            'Q','R','T','S','U','V','W','X',
                            'Y','Z'),
                   nrow = 2)
position <- matrix(data = c('first','second','third',
                            'fourth','fifth','sixth',
                            'seventh','eighth','ninth',
                            'tenth','eleventh','twelfth',
                            'thirteenth','fourteenth','fifteenth',
                            'sixteenth','seventeenth','eighteenth',
                            'nineteenth','twentieth','twenty first',
                            'twenty second','twenty third','twenty fourth',
                            'twenty fifth','twenty sixth'),
                   nrow = 2)

for(l in 1:13){
  for (p in 1:2)
    print(paste(alphabet[p,l], ' is the ', position[p,l], ' letter of the alphabet', sep = ''))
}





#6 - making a nested for loop with matrices

alphabet <- matrix(data = c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','T','S','U','V','W','X','Y','Z'), nrow = 2)

position <- matrix(data = c('first','second','third','fourth','fifth','sixth','seventh','eighth','ninth','tenth','eleventh','twelfth',
'thirteenth','fourteenth','fifteenth',
'sixteenth','seventeenth','eighteenth',
'nineteenth','twentieth','twenty first',
'twenty second','twenty third','twenty fourth',
'twenty fifth','twenty sixth'),nrow = 2)

for (i in 1:13) { #i think if you have a matrix, you don't need to put (alphabet)
  for (p in 1:2) #no bracket needed here
    print(paste(alphabet[p,i], ' is the ',position[p,i],' letter of the alphabet.', sep =''))
  }
for (p in 1:2){
  for(i in 1:13)
    print(paste(alphabet[p,i], ' is the ', position[p,i],' letter of the alphabet.', sep = ''))
}
