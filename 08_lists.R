# Description: lists

rm(list = ls())

# lists are special types of vectors that store different data types
v1 = c(1,TRUE,"gyre") # converts as character
l1 = list(1,TRUE,"gyre")
length(l1)
str(l1) # mixed
?str

v1 = c(1,2,3)
v2 = c(4,5,6,v1)
l2 = list(4,5,6,v1)
l3 = list("a",l2)

# lists can contain lists
l2 = list(letters[1:3]) # contains "a", "b", "c"
length(l2)
l2a = list('a','b','c')
length(l2a)
l3 = list(1:5) # contains 1,2,3,4,5
length(l3)
l3a = list(1,2,3,4,5)
length(l3a)
l4 = list(TRUE,FALSE,TRUE)
length(l4)
l5 = list(l2,l3,l4)
str(l5)
summary(l5)
l6 = list(l5,l2a,l3a)
m1 = matrix(1:20,nrow = 4)
l7 = list('a','b',m1)
str(l7)
l6 = list()
# creating list from vectors
vec1 = c('a','b','c')
vec2 = c(1,2,3,4)
vec3 = c(TRUE,FALSE,TRUE)
list1 = list(vec1,vec2,vec3)
l7 = list(vec1,l2)

# create list from another 
List2 = list1[c(1,3)]   #  first and third elements
List3 = list1[c(2)]   # inlude only 2nd vector

# named list elements (aka key/value)
l8 = list(bob=c("a",6.2,150,3,4,5),bill=c(5.4,110,2,8))
names(l8)

# accessing individual elemnets
l8[1]
l8["bob"]
l8$bob
l8$bill
class(l8$bob)
l8$bob[3:5]
l8$bob[c(1,2)]
l8$bob
l8[1]

install.packages("purrr",dependencies = TRUE)
library(purrr)
map_chr(list1,2)
map_chr(l8,2)

l10 = list(c(1,2,2),c(2,3,3),c(2,3,3))
class(l10[2])

# functions
summary(l8)
str(l8)
length(l8)
head(l8)
tail(l8)

# maths cannot be done
l7 = list(1,2,3,4)
sum(l7)  # returns error
l7 * 2   # returns error

# logical functions on lists
is.integer(list1)        # verifies if it is integer
is.integer(l10)
is.character(list1)      # verifies if it is character
is.data.frame(list1)     # verifies if it is matrix
is.list(list1)           # verifies if it is list
