# Read packages

rm(list=ls())
# package readr is required for read_csv function
install.packages("readr",dependencies = T)
library(readr)

# package data.table is required for fread function
install.packages("data.table",dependencies = T)
library(data.table)


# difference between read.csv, read_csv and fread
# read_csv is faster than read.csv
# fread is faster than read_csv

StartTime = Sys.time()
Churn1 = read.csv("/users/navyarao/Documents/Data Nest/Churn.csv")
Churn2 = read.csv("/users/navyarao/Documents/Data Nest/ChurnNA.csv",header = TRUE,na.strings = c("$","NA"))
Sys.time() - StartTime
class(Churn1)
colnames(Churn1)

getwd()
setwd("/users/navyarao/Documents/Data Nest/")

Churn1a = read.csv("Churn.csv")


StartTime = Sys.time()
Churn2 = read_csv("/users/navyarao/Documents/Data Nest/Churn.csv")
Sys.time() - StartTime

# fread - intall data.table package
StartTime = Sys.time()
Churn3 = fread("/users/navyarao/Documents/Data Nest/Churn.csv")
Sys.time() - StartTime
?fread
summary(Churn1)
Churn1$Churn = as.factor(Churn1$Churn)
Churn1$IntlPlan = as.factor(Churn1$IntlPlan)
Churn1$VMailPlan = as.factor(Churn1$VMailPlan)
Churn1$AreaCode = as.factor(Churn1$AreaCode)
summary(Churn1$IntlPlan)


Churn1$AreaCode
library(arules)
library(gplots)
plot(table(Churn1$State))

itemFrequencyPlot(Churn1$AreaCode)
table(Churn1$Churn)
barplot2(table(Churn1$Churn))

table(Churn1$IntlPlan)
sort(table(Churn1$State))

table(Churn1$IntlPlan,Churn1$Churn)
mean(Churn1$NightMins)
median(Churn1$NightMins)
table(Churn1$AreaCode)

Churn1$Phone = NULL # delete column
colnames(Churn1)
num = c(1:3333)
Churn1$num = num  # add new column

# aggrgate
aggregate(x=Churn1$CustServCalls,by=list(Churn1$State,Churn1$AreaCode),FUN=mean)
?aggregate
aggregate(x=Churn1$AreaCode,by=list(Churn1$AreaCode),FUN=length)

sum(is.na(Churn1$DayMins))
sum(is.na(Churn1$NightMins))
sum(is.na(Churn1$EveMins))
aggregate(x=cbind(Churn1$DayMins,Churn1$NightMins,Churn1$EveMins),by=list(Churn1$AreaCode),FUN=mean)

aggregate(x=Churn1$IntlMins,by=list(Churn1$AreaCode),FUN=sum)

aggregate(x=Churn1$Churn,by=list(Churn1$AreaCode,Churn1$IntlPlan),FUN=length)
aggregate(x=Churn1$Churn,by=list(Churn1$AreaCode,Churn1$IntlPlan),FUN=length)


aggregate(x=Churn1$IntlMins,by=list(Churn1$IntlPlan),FUN=mean)
aggregate(x=Churn1$IntlMins,by=list(Churn1$IntlPlan),FUN=sum)

install.packages("sqldf",dependencies = T)
library(sqldf)
sqldf("select State, avg(CustServCalls) from Churn1
       group by State")
?sqldf

sqldf("select AreaCode, max(DayMins) from Churn1
       group by AreaCode")

x = sqldf("select AreaCode,State, avg(DayMins), avg(EveMins) from Churn1
       group by AreaCode,State")
class(x)
