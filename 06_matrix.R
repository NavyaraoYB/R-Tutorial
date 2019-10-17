# Description: Matrix:

rm(list = ls())

# matrix is a vector with 2 dimensions

v1 = c(1:20)

m1 = matrix(v1,nrow=4,ncol=5)
class(m1)
dim(m1)# dimensions of matrix  

# accessing individual elements
m1[2,3]  # 2nd row, 3rd column
m1[2,2:3] #subset
m1[-2,2:3] #subset
m1[c(2,3),c(4,5)]

# byrow
m2 = matrix(v1,nrow=4,ncol=5,byrow=TRUE)

# naming rows & columns
v2 = c(letters[1:10],LETTERS[1:10])
length(v2)
m3 = matrix(v2,ncol = 2)
m3 = matrix(v2,ncol = 2,dimnames = list(c(),c("lowercase","UPPERCASE")))
m4 = matrix(v2,nrow = 2,byrow = TRUE,dimnames = list(c("lowercase","UPPERCASE"),c()))


# maths
m1 * 2
m1 * m2
v5 = c(1:4)
m5 = matrix(v5,nrow=2)
v6 = c(1:16)
m6 = matrix(v6,nrow=4)
m5 * m6
v7 = c(1,2)
m7 = matrix(v7,nrow=2)

m5 * m7

# or by row
m4 = matrix(v2,nrow = 2,dimnames = list(c("lowercase","UPPERCASE"),c()))


#transpose
mt1 = t(m1)

# functions
summary(m1)
length(m1)
dim(m1)
unique(m1)
table(m1)
head(m1,n=1)
tail(m1,n=2)

# stitistics
sum(m1)
mean(m1)
var(m1)  # returns co-variance between columns
?var
sd(m1)^2

min(m1)
max(m1)
abs(m1)
sqrt(m1)