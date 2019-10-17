# data plots

# by default, the following functions are available
# plot - data points scatter plot
# hist - histogram chart
# boxplot - box plot - helps in identifying outliers
# install ggplot2 for more plotting functions

rm(list = ls())

#Read Titanic
Titanic=read.csv("C:/Digital Nest/R/Titanic.csv")
Churn = read.csv("C:/Digital Nest/KNN/Churn.csv")
#ploting single varaible
?plot
help(plot)
par(mar=c(2,2,2,2))
plot(Titanic$Age,type = "p")  # dots
plot(Titanic$Age,type = "l")  # lines
plot(sort(Titanic$Age),type = "l")  # lines connecting points without dots
plot(Titanic$Age,type = "l")  # both dots and verticle lines

v1 = c(5,2,10,6,20)
plot(v1,type="p")

plot(Titanic$Age,type = "c")  # lines connecting points with dots
plot(v1,type="c")

plot(Titanic$Age,type = "o")  # dots and lines connecting them
plot(v1,type="o")

plot(Titanic$Age,type = "h")  # histogram type lines
plot(sort(Titanic$Age),type = "h")  # histogram type lines

plot(v1,type="h")
?plot
plot(Titanic$Age,type = "n")  # no plotting

a = sort(Titanic$Age)
min(a)
max(a)
sum(is.na(a))

plot(a,type = "p")  # dots


plot(Churn$AccountLength,type = "l")
plot(sort(Churn$AccountLength),type = "c")
plot(Churn$AccountLength,type = "c")

plot(Titanic$Age,Titanic$Fare,type="p")

plot(Churn$VMailMessage,Churn$CustServCalls,type = "p")
plot(Churn$DayMins,Churn$DayCharge,type = "p",
     asp = 2)

# defined the margins for plot
par("mar")
par(mar=c(4,4,1,1))
par(mar=c(5.1,4.1,4.1,2.1))
?par

plot(sort(Titanic$Age),type="p",main="Titanic",
sub="Age",xlab="Passenger id",
ylab="Passenger Age",asp = 1)

plot(sort(Churn$AccountLength), type = "l", main="Churn",
     sub = "AccountLength",xlab = "customer index",
     ylab = "Account Length",asp = 5)

plot(Churn$DayMins,Churn$DayCharge, type = "l", main="Churn",
     sub = "MinsVsCharge",xlab = "Day Mins",
     ylab = "Day Charge",asp = 3)

?plot
plot.default(Titanic$Age,type = "l")
plot.default(Titanic$Age)

# add another variable to existing plot

lines(sort(Titanic$Fare),type='p',col="red")
lines(sort(Churn$DayMins),col="red")

plot(sort(Churn$DayMins),type = 'l')
lines(sort(Churn$EveMins),col="red")
lines(sort(Churn$NightMins),col="blue")
lines(sort(Churn$IntlMins),col="green")
legend("topleft", legend = c('DayMins','EveMins','Night','Intl'),
        col = c('Black','red','blue','green'),lty=1:2,cex=0.1)
?lines
?legend

plot(sort(Churn$EveMins),type = "l")
lines(sort(Churn$NightMins),col = "red")

#ploting two variables
plot(Titanic$Age,Titanic$Fare,type="p")  # verticle lines 
plot(Titanic$Fare,Titanic$Age,type="p",asp=1)  # verticle lines 
plot(Titanic$Fare,Titanic$Age,type="p",asp=3)  # verticle lines 
plot(Titanic$Fare,Titanic$Age,type="p",asp=5)  # verticle lines 

plot(Titanic$Age,Titanic$Survived,type="p")  # dot
table(Titanic$Sex,Titanic$Survived)
plot(Titanic$Sex,Titanic$Survived,type="p")
plot(Titanic$Survived,Titanic$Age,type="p")

plot(Titanic$Sex,Titanic$Pclass,type="p")

plot(Churn$DayMins,Churn$DayCharge,type = "l")

plot(Churn$AccountLength,Churn$DayMins, type = "p")

par(mar=c(0.1,0.1,0.1,0.1))
# plot multiple variables
plot(Churn[,c("AccountLength","DayMins","NightMins")])
plot(Churn[,c("DayCharge","DayMins","NightMins","NightCharge")])

?plot.default()
?lines

# plotting a curve using function
x = seq(-pi,pi,0.1)
plot(x,sin(x),type = "l")
x = seq(1:10)
plot(x,x^3,type="l")

# Bar plot - use ggplot2
barplot(table(Titanic$Sex))
barplot(table(Titanic$Sex,Titanic$Survived))
legend("topleft", legend = c('Male','Female','Sur','Nosur'),
       col = c('Black','red','blue','green'),lty=1:2,cex=0.5)
?barchart
par(mar=c(2,2,2,2))

#boxplot displays mean and outliers
?boxplot
par(mar=c(2,2,2,2))
boxplot(Titanic$Age,range = 0)  # All the data points are covered under limits
boxplot(Titanic$Age,range = 1)  # upper/lower limit lines are Q3+1IQR, Q1-1IQR
boxplot(Titanic$Age,range = 2)  # upper/lower limit lines are Q3+2IQR, Q1-2IQR
boxplot(Titanic$Age)  # upper/lower limit lines are Q3+1.5IQR, Q1-1.5IQR
boxplot(Titanic$Age,names = "box1")

boxplot(Churn$DayMins,Churn$EveMins,Churn$NightMins,Churn$IntlMins)

boxplot(Churn$AccountLength, range = 0)
boxplot(Churn$AccountLength, range = 1)

summary(Churn$AccountLength)
quantile(Churn$AccountLength,
         probs = c(0.03,0.10,0.25,0.75,0.90,0.97))
?quantile

mean(Titanic$Age,na.rm=T)
median(Titanic$Age,na.rm=T)
quantile(Titanic$Age,na.rm=T)

boxplot(Titanic$Fare)
boxplot(Titanic$Fare,Titanic$Age,names = c("Fare","Age"))
boxplot(Churn$DayMins,Churn$EveMins,names = c("Day","Eve"))

# histogram
?hist()
par(mar=c(2,2,2,2))
hist(Titanic$Age,breaks = "Sturges")
hist(Titanic$Age,breaks = 20)

hist(Churn$DayMins,freq = F)

hist(Titanic$Age,freq = T)
hist(Titanic$Age,freq = F)
hist(Titanic$Age,density = 1,angle = 45)
hist(Titanic$Age,col = "blue",border = "red")
hist(Titanic$Age,xlim = c(20,40))
?hist

hist(Churn$DayMins)
hist(Churn$DayMins,breaks = 20,col = "red",border = "blue")
hist(Churn$DayMins,breaks = 20,col = "red",border = "blue")

?hist

# ggplot2
install.packages("ggplot2",dependencies = TRUE)
library(ggplot2)

# the following plots the bar chart for number of survived by sex
?ggplot

# http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html
# https://www.rdocumentation.org/packages/ggplot2/versions/3.1.0


# relation between two continuous variables
ggplot(Titanic,aes(x = Age, y = Fare)) +
  geom_point()
ggplot(Churn,aes(x = EveMins, y = EveCharge)) +
  geom_point()

# relation between two categorical variables
ggplot(Titanic,aes(x = Sex, fill=factor(Survived))) +
  geom_bar(stat='count')

ggplot(Churn, aes(x = Churn)) +
  geom_bar(stat = 'count')

ggplot(Churn, aes(x = Churn,fill=factor(IntlPlan))) +
  geom_bar(stat = 'count')

?geom_col

# the following plots number of males and females by Pclass
ggplot(Titanic,aes(x = Sex, fill=factor(Pclass))) +
  geom_bar(stat='count')

# the following plots number of survived by Pclass
ggplot(Titanic,aes(x = Pclass, fill=factor(Survived))) +
  geom_bar(stat='count')


#iris data: this table is default supplied
View(iris)
# multi dimensional plot
qplot(Sepal.Length,Sepal.Width,data = iris,colour=Species)
qplot(Petal.Length,Petal.Width,data = iris,shape=Species)
qplot(Sepal.Length,Sepal.Width,data = iris,shape=Species)
qplot(Sepal.Length,Sepal.Width,data = iris,size = Species)
qplot(Sepal.Length,Sepal.Width,data = iris,size = Petal.Length)
qplot(Sepal.Length,Sepal.Width,data = iris,
      size = Petal.Length,
      colour = Species)

qplot(Petal.Length,Petal.Width,data = iris,
      size = Sepal.Length,
      colour = Species)

Churn$IntlPlan = as.factor(Churn$IntlPlan)
Churn$Churn = as.factor(Churn$Churn)
qplot(NightMins,EveMins,data = Churn,colour=Churn,
      shape=IntlPlan)

Churn$IntlPlan = as.factor(Churn$IntlPlan)
Churn$Churn = as.factor(Churn$Churn)
qplot(DayMins,DayCharge,data=Churn,
      colour=Churn,
      shape=IntlPlan,
      size=DayCalls)

?qplot

qplot(Sepal.Length,data = iris,geom="histogram")
qplot(Sepal.Length,data = iris,geom="histogram",fill=Species)

# pie chart
?pie()


df1 = data.frame(table(Churn$AreaCode))
pie(df1$Freq, labels = df1$Var1, main="Pie Chart")
par(mar=c(1,1,1,1))

df2 = data.frame(table(Churn$Churn))
pie(df2$Freq, labels = df2$Var1)

install.packages("plotrix",dependencies = TRUE)
library(plotrix)

?pie3D
par(mar=c(1,1,1,1))

pie3D(df1$Freq, labels = df1$Var1, explode=0.1,
      main="Pie Chart")


