# One Hot Encoding & Scaling

rm( list = ls())

# one hot encoding including lable encoding
install.packages("dummies",dependencies = TRUE)
library(dummies)
?dummy
s1 = c('b','b','d','a','e')
s2 = c('x','y','z','x','y')
s3 = c(1,2,3,2,3)
df = data.frame(s1,s2)

d1 = dummy(df$s1)  # input should be a single vector
d2 = dummy(df[,2])
d3 = dummy(s3)
d4 = dummy(s1)

# scaling
scale<-function(x){
  scl<-(x - mean(x)) / sd(x)
  return(scl)
  
}

n = c(1,2,3,4,5)

n2 = c(1001,1002,1003,1004,1005)

df = data.frame(n,n2)
nt = scale(n)
scale(df$n2)
class(dfs)

