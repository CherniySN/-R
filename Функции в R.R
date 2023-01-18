# ФУНКЦИИ

print('xnj')

funcnnn <- c(3,4,5)
 
name.of.func <- function(veraible){
  veraible <- veraible ^ 2
  return(veraible)
}

name.of.func(5)

name.of.func1 <- function(veraible, x){
  veraible <- veraible ^ x
  return(veraible)
}

name.of.func1(5, 2)

name.of.func1 <- function(veraible, x){
  veraible <- veraible ^ x
  return(veraible)
}

name.of.func2 <- function(veraible, x){
  veraible <- veraible ^ x
  x <- x+5
  return(veraible, x)
}

name.of.func2(2, 5)


name.of.func2 <- function(veraible, x){
  veraible <- veraible ^ x
  x <- x+5
  total <- c(veraible, x)
  return(total)
}

name.of.func2(2, 5)[1]


