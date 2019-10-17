# Iterate statements and conditional statements

# for loop
for(i in c(1:10))
{
    print(i)
  }
v1 = c(2,6,3,8,5,2,10,4)
for(j in v1)
{ print(j+2) }

# print each letter in string
s1 = "Hyderabad"
n = nchar(s1)
for(x in c(1:n))
{ print(substr(s1,start=x,stop = x))}

# nested for loop
v1 = c(1,2,3)
v2 = c(10,20,30,40,50)
for(x in v1)
{ 
  for(y in v2)
  { 
    print(x * y)
    }
}

# write output in a matrix
n1 = length(v1)
n2 = length(v2)
v = numeric(length = n1*n2)
m1 = matrix(v1,nrow=n1,ncol = n2)

for(i in c(1:n1))
{ 
  for(j in c(1:n2))
  {
    x = v1[i] *v2[j]
    m1[i,j] = x
   }
}
print(m1)

# matrix multiplication
m1 = matrix(c(1:6),nrow=3)
m2 = matrix(c(1:8),nrow=2)
row1 = nrow(m1)
col1 = ncol(m1)
row2 = nrow(m2)
col2 = ncol(m2)
v1 = numeric(length =row1 * col2)
moutput = matrix(v1,nrow = row1, ncol = col2)

for (r1 in c(1:row1))
{
  for (c2 in c(1:col2))
  {
    m = 0
    for (c1 in c(1:col1))
    {
        p = m1[r1,c1] * m2[c1,c2]
        m = m + p
    }
    print(m)
    moutput[r1,c2] = m
  }
}

# if condition

a = -5
if (a > 0) 
{ 
  print(a)
  print('positive')
} else
{
  print('negative')
  a = a * -1
  print(a)
  }


# ifelse condition
v1 = c(1,2,3,4,5,6,7,8,9,10)
v2 = integer(length = length(v1))

# make it 1 if number > 5, otherwise make it 0
for (x in c(1:length(v1)))
{ 
  if (v1[x] > 5)
   { v2[x] = 1} else {v2[x] = 0}
}

# use ifelse to get same results
v3 = ifelse(v1>5,1,0)

# for loop
for(i in c(1:10))
{
  if (i == 3){ next } 
  print(i)
}

# print odd numbers
for(i in c(1:50))
{
  if (i %% 2 == 0){ next } 
  print(i)
}

for(i in c(1:50))
{
  if (i %% 2 != 0)
    { print(i) } 
  }


# Default functions

# calculate mean without missing values
v4 = c(1,2,3,4,NA,6,7,8,9,10)
mean(v4)
x = mean(v4,na.rm =TRUE)

# replace missing value with mean
is.na(v4)
sum(is.na(v4))
v5 = ifelse(is.na(v4),mean(v4,na.rm=TRUE),v4)

# while loop
a = 0
while (a<5)
{ 
  print(a)
  a = a + 1
  }

a=0
while (a<5)
{ 
  print(a)
  a = a + 1
  if (a==3){ break }
}

X<-c(1:10)
X
mean(X)

x <- matrix(1:10, ncol = 2)
x
(centered.x <- scale(x, scale = FALSE))

(centered.x <- scale(x, scale = FALSE))
cov(centered.scaled.x <- scale(x))
