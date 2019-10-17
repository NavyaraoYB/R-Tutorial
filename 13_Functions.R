# Functions
# 1. Default functions
# 2. User defind functions


# creating User defined functions
Diginest = function(a,b,c)
{ 
  d=((a+b)*c) 
  return(d)
  }

x = Fun1(1,2,3)
Fun1(1,2)
y = Fun1(c=1,b=2,a=3)

Fun2 = function(a,b,c)
{ a = a+10
  b = a + b
  c = c * b
  d = 20
  print(d)
  
  c}



z= Fun2(1,2,3)


Fun4 = function(a,b,c)
{ a = a+10
b = a + b
c = c * b
return(c(a,b,c)) 
}

Fun4(1,2,3)

x = Fun1(1,2,3)
Fun1(1,2)

Int = function(P,R,t)
{ P * t * R}

principal = 10000
rate = 0.10
term = 20
Int(principal,rate,term)


# 
fun2 = function(v)
{v * 2}

fun2(3)

v1 = c(1,2,3,4,5)
fun2(v1)

v2 = c(11,12,13,14,15)

df1 = data.frame(v1,v2)
fun2(df1)


# function calls another function
f1 = function(a,b)
{a = a+10
 b = b+20
 c = f2(a,b)
 return(c)}
f2 = function(x,y)
{x+y}
f1(1,2)


for(i in 1:ncol(df1))
{ 
  df1[i]= fun2(df1[i])
  }




# function to calcualte average
avg = function(v)
{ 
vec = v
n = length(vec)
total = 0
for (i in c(1:n))
{ total = total + vec[i]}
total/n
}

x = c(1,2,3,4,5,6,7,8,9,10)
avg(x)

# Default functions

# table function provides frequency of value
table(Store$Store)  #  single variable
table(Store$Store,Store$DayOfWeek)  # two variables

# aggregate function aggregates one column based on another column using a function
aggregate(Store$Sales,list(Store$DayOfWeek),sum)

# mean function returns average value
mean(Store$Sales)

# median function returns median value
median(Store$Sales)

# mode function returns median value
mode(Store$Sales)



