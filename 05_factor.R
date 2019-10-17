# Description: factors

rm(list = ls())

# Factors are lists of discrete values, Stored as integers

f1 = c("blue","black","green","white","black","blue","blue")
#notice the repeat of blue and black

unique(f1)
class(f1)

f2 = as.factor(f1)
class(f2)
summary(f1)
summary(f2)
str(f2)
levels(f2)     # unique values

levels(f2) = c("one","two","three","four")
table(f2)
f2 
summary(f2)

table(f2) # count frequency of values. table is a collection of factors
nlevels(f2) # number of unique values

#subset
factor(f2,exclude = "two")

# numbers as factors
f3 = as.factor(c(1,2,3,2,4,5,2,1))
f3 + 2  # maths cannot be done
f3[2] + 2

#Accessing individual elements
levels(f3)
f3[4]
f3[4:7]
f3[4] = 10 # use levels function
f3[4] = 3 # works
levels(f3) = c(10,11,1,2,5)

# functions on vectors
summary(f2)
str(f2)
length(f2)
unique(f2)
table(f2)
head(f2)
tail(f2)
levels(f2)

city = c("hyd","del","sec","che",'hyd')
city2 = as.factor(city)
str(city2)
