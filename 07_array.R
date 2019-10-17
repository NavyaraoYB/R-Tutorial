# Description: Array

rm(list = ls())

# array is a vector with more than 2 dimensions
v1 = c(1:12)

# array(data_vector,dim_vector)
# dimension is expressed as row, column, z-index
a1 = array(v1,c(2,3,2))

a1[,,1]
class(a1)

a3 = array(1:60,dim=c(3,4,5))

# indexing into the array
a3[2,3,2]
a3[2,3,2] = "100"

# extracting subsets
a1[2,2,2] # omission returns the entire range. Here - all columns of row 2, table 2

# create array from another array
a3[c(2:3),-c(1),c(4,5)]   # take values from 2nd row to 4th row and skip first column and take only 4th and 5th layer

# dimnames
dim(a1)
rnames <- c("up","down")
cnames <- c("left","middle","right")
tnames <- c("behind","infront")
dimnames(a1) = list(rnames,cnames,tnames)

a1["down",3,2]

# functions
summary(a1)
length(a1)
unique(a1)
table(a1)
head(a1)
tail(a1)

# convert to different type
c1 = as.character(a1)
class(c1)
a2 = array(c1,c(2,3,2))

# stitistics
sum(a1)
mean(a1)
var(a1)
?var
sd(a1)
min(a1)
max(a1)
abs(a1)
sqrt(a1)

# logical functions on arrays
is.integer(a1)        # verifies if it is integer
is.character(a1)      # verifies if it is character
is.array(a1)         # verifies if it is array

# maths
a1 * 2
