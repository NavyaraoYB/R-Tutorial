# Description: R Data Types:Basic Types

# R has six atomic types:
#1. integer
#2. real
#3. string (or character)
#4. logical 
#6. complex

# clear the global environment data
rm(list=ls())
x = 5
# Real -----------------------------------------------------------------
r = 10.5
class(r) # returns type of data
x = 10
class(x)
is.numeric(r)
r * 3  # mathematical operations can be performed

a = as.integer(r)
class(a)
d = a * 3
c = as.numeric(a)
class(c)

# Integer -----------------------------------------------------------------
i = 10.5
class(i)
j = as.integer(i)
class(j)
i ** 2 
is.integer(i)
is.numeric(i)     # integer is subset of real numbers
is.integer(j)     # real is superset of integers 
is.numeric(j)
r2 = 10
class(r2)
is.integer(r2)

r3 = as.numeric(i)

# Character ---------------------------------------------------------------
s1 = "I like R"
s2 = "10"
class(s2)
is.character(s1)
s1 * 3

n = as.numeric(s1) # all NA
s3= as.character(a)  # numer is stored as string
s2 == r     # returns TRUE
cat = 'i am cat'
s = "10.5a"
x = 9
x = as.numeric(s)

# cannot access individual elements
substr(s1,start=3,stop=5) # use substr instead
nchar(s1)   # returns number of characters

# concatenation
?paste

paste(s1,"programming")
paste("programming",s1)
paste0(s1,"functions")

# replacement
help(sub)
s3= sub("I","We",s1)
s2 = "I like R and I like Python as well"
sub("I","We",s2)  # replaces first match only
gsub("I","We",s2) # replaces all matches
gsubfn::
# Logical -----------------------------------------------------------------
l1 = TRUE
l2 = FALSE
class(l1)
is.logical(l1)
is.logical(FALSE)
is.logical(false) # FALSE, not false. TRUE, not true (or True)
is.logical(True)
is.logical(1) # 1 is an integer. Not logical
as.numeric(TRUE) # although the inverse sort of works
as.numeric(FALSE)
TRUE & FALSE # use & for and. Caution: & is different than &&
TRUE | FALSE # use | for or. Caution: | is different than ||
! FALSE # use ! for negate
help("&")
l2 = c(TRUE,TRUE,FALSE)
class(l2)
any(l2)
all(l2)
as.character(TRUE)
# Complex -----------------------------------------------------------------
c1 = 3i
class(c1)
c2 = 1 + 2i
class(c2)
sqrt(c1)
c1*3
-1+0i == as.complex(-1)

