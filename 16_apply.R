# Description: Example file for apply

rm(list = ls())

# main idea: don't use FOR loops if you can APPLY

library(datasets)
data("WorldPhones") # The number of telephones in various regions of the world (in thousands).

view(WorldPhones)
class(WorldPhones)

# example for loop
for(aCountry in 1:ncol(WorldPhones)) {
  print(mean(WorldPhones[,aCountry]))
}

for(year in 1:nrow(WorldPhones)) {
  print(mean(WorldPhones[year,]))
}

# instead of "for" loops, use "apply"
# input can be data frame, matrix
# output is vector, array or list

apply(X = WorldPhones,MARGIN = 1, FUN = mean) # apply function on rows
apply(X = WorldPhones,MARGIN = 2, FUN = mean) # apply function on columns

?sd

# applying user defined function
f1 = function(x)
{ x * 2}

apply(X = WorldPhones,MARGIN = 2, FUN = f1) # apply function on columns

# lapply: returns a list resulting from applying 
# a function to each element of original list
# lapply works best on lists

# Findout which one are >10000
phones = list(WorldPhones)
phones2 = list(WorldPhones)
phonelist = list(phones,phones2)

fun = function(x){x>10000}

l1 = lapply(X = phones, FUN = f1)
l2 = lapply(X = phonelist, FUN = f1) # failes as it does not work on multiple lists
s1 = sapply(X = phones, FUN = f1)
# Description: mapply

# mapply is similar to apply except it handles multiple arguments in functions
# also note function and object are reversed in argument order from apply

?mapply
mapply(function(x,y){x^y},
       x=c(2,3),
       y=c(3,4))

churn = read.csv("C:/Digital Nest/R/Churn.csv")
total = function(a,b,c,d)
{ a+b+c+d }

#mins = mapply(function(a,b,c,d){a+b+c+d},
mins = mapply(FUN=total,
              a=churn$DayMins,
              b=churn$EveMins,
              c=churn$NightMins,
              d=churn$IntlMins)

v1 = c("hello","Hyd")
r1 = rep(v1, 3, each = 1)
class(r1)

m1 = mapply(rep, "hello", 1:4, each = 1)
class(m1)


fun2 = function(x){x*2}

l1 = list(1,2,3)
l2 = list(4,5,6)
l3 = list(l1,l2)

m3 = mapply(fun2,phones)
mapply(fun2, l3)

mapply(function(x, y) seq_len(x) + y,
       c(a =  1, b = 2, c = 3),  # names from first
       c(A = 10, B = 0, C = -10))

seq_len(2)
# there are many more apply-type functions
apropos(".apply")

# tapply
data(iris)
iris
class(iris)
tapply(iris$Sepal.Width, iris$Species, median)
