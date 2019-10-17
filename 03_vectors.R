# Description: Example file for Vectors

rm(list = ls())

# Data Structures are 
# homogeneous
# 1. Vectors      
# 2. factors
# 3. Matrices
# 4. Arrays
# Heterogeneous
# 5. Lists
# 6. Data Frame

rm(list=ls())

# vectors are homogeneous
v1 = c(1,-2,3,4.5)
class(v1)
summary(v1)

v2 = c("first","second","third","fourth","fifth")
class(v2)
summary(v2)

v3 = c(1,2,3,4,5,TRUE) # concatenate different types into a vector results in character
v4 = c(1,2,3,4,5,TRUE,"R")
class(v3)
as.numeric(v4)
as.character(v4)
as.character(TRUE)

v4 = integer(length = 4) 
v5 = numeric(length = 4)
v6 = character(length = 4)
v7 = c()
v8 = as.numeric(v7)
v10 = c(1,2,3,NA,NA,NA)
class(v7)
v1 = letters
v2 = c(1:10)
v1[2]
v1[2:4]     # extracting subset
v2 * 2      # multiplying each element
v1[c(6,4,8)]  # access 1st and 4th element
v1[26:20]
rev.default(v1)

ln1 = c(1,2,3)
class(ln1)
li1 = as.integer(ln1)
class(li1)
lc1 = as.character(li1)
class(lc1)

ln2 = c(4,5,6,7)
c(ln1,ln2)  #concatenation

# modifing individual elements
ln1[3] = 6
# adding another element
ln1[4] = 10
ln1[10] = 20
ln1[6] = 40

ln1[4] = 3
ln1[2] = 20
ln1[2] = "A"
length(v1)
ln3= as.numeric(ln1)

# adding individual items of two vectors of same length
ln1 = c(1,2,3)
ln3 =c(10,11,12)
ln4=c(3,6,8,2)
ln5 = c(3,4,5,7,8,4)
ln1+ln3
ln1*ln3
length(ln1)
ln1+ln4
ln1+ln5

l1 = c(1:20)
l2 = l1[-c(6:10)]

l1[c(6:10)]
l1[-c(4)]
l3 = l1[-c(3,5,10,15)]

head(l1)
tail(l1)
tail(l1,n=3)
?head

l1[1] = NULL  # NA for vectors

25 %in% l1  # membership

letters
'z' %in% letters

d = c(5,6,57,8,4,3,4,2,1,2)
unique(d)
e = c(1,0,0,0,0,1,1,1,0,0)
unique(e)
city = c("Hyd","Sec","Del","Hyd","1","Mum")
unique(city)
table(e)
prop.table(table(e))

# custom indexing
v1 = c("one","two","three","four")
v1[2]
names(v1) = c("DEL","MUM","KOL","CHE")
v1["MUM"]
v1[3]
v1["KOL"]
names(v1)[3]

# subsetting a simple vector
LETTERS[3] # LETTERS is a built-in R constant containing the upper-case alphabet.
LETTERS[c(3:5,15:20)]
LETTERS[c(3,20:23)]
LETTERS[-c(10,7,3)]
letters
class(LETTERS)

# Exclude
LETTERS[-c(3:5)]
LETTERS[c(-3,-5)]

# repeat "TRUE","FALSE" x 13, then apply to LETTERS. 
# TRUE means select the letter. FALSE means omit the letter
rep(c(TRUE,FALSE),13)
LETTERS[rep(c(FALSE,TRUE),13)] 
numbers = c(1:50)
numbers[rep(c(FALSE,TRUE),25)]

# converting one data type to another
Vecnum1 = c(1.5,2.5,3.5,4)
class(Vecnum1)
Vecint1 = as.integer(Vecnum1)
vecchar = as.character(Vecnum1)

# functions on vectors
str(Vecint1)
str(letters)
str(l1)
str(Vecint1[1])
summary(l1)
summary(letters)
mode(l1)
mode(letters)
length(v1)
unique(v1)
table(v1)
v1=c(1:20)
head(v1)  # first 6 elements
tail(v1)  # last 6 elements

# stitistics
v1=c(1:10)
sum(v1)
mean(v1)
var(v1)
sd(v1)
min(v1)
max(v1)
abs(v1)
sqrt(v1)
summary(v1)
str(v1)
median(v1)
table(v1)
v1 = c(1,4,12,5)
prod(v1)
v1 * sqrt(v1)
mode(v1)
?mode
help("mode")
v1^2
