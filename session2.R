a <- c(1,3,2,4,5,2,4,2,6,4,5,3)
a
#Extract individual elements of a vector
a[1]
#Access multiple values of a vector
b <- a[c(1,4)]
b
d <- a[1:4]
d
#Drop values from a vector
d[-1]
a >3
a/5

#Let us say that you want to select subset of a vector based on a condition.
anyvector <- a>3
a[anyvector]

x <- 1:30
x[x>5]


#Table: Perhaps the single most useful vector function in R is table. You need to see it in action to appreciate
#just how good it is. Here is a huge vector called counts containing 10 000 random integers from a negative
#binomial distribution (counts of fungal lesions on 10 000 individual leaves, for instance):

counts <- rnbinom(10000,mu=0.92,size=1.1)
counts[1:30]
table(counts)


#Set theory
setA <- c("a", "b", "c", "d", "e")
setB <- c("d", "e", "f", "g")

union(setA, setB)
intersect(setA, setB)
setdiff(setA,setB)

#List is special type of vector that can contain different types
x <- list(1,"c",FALSE)
x
x[3]
x[1:2]

x <- list(col1=1:3, col2 = 4)
x
x[1]
x[[1]]
x$col1
x$col1[2]
x[[1]][2]


#Matrices
#An array is a multi-dimensional object. The dimensions of an array are specified by its dim attribute, which
#gives the maximal indices in each dimension.
#Creating matrices
m1 <- matrix(nrow=4, ncol=5)
m1
dim(m1)

m1 <- matrix(1:10,nrow=2, ncol=5)
m1
dim(m1)

matrix(data=c(1, 2, 3, 4), byrow=TRUE, nrow=2)

#What happens in this case?
matrix(data=c(1, 2, 3, 4, 5), byrow=TRUE, nrow=2)

x<- matrix(1:10,2,5)
x
x[1,1]
x[1,]
x[,2]



#Column bind and row bind for matrices
x<- 1:6
x
y <- 12:17
y
cbind(x,y)

rbind(x,y)

#What happens in this case?
x<- 1:5
x
y <- 12:17
y
cbind(x,y)

rbind(x,y)


#Factors - can be used to represent categorical data
#Factors are categorical variables that have a fixed number of levels. A simple example of a factor might be
#a variable called gender with two levels: 'female' and 'male'. If you had three females and two males, you
#could create the factor like this

#What is the difference between a categorical and continuous data? 

gender <- factor(c("female", "male", "female", "male", "female"))
class(gender)
mode(gender)

x <- factor(c("yes","no","maybe","yes","no"))
x
unclass(x)


#Tabular data is read into a type of data structure known as data frame.
#All variables in a data frame are stored as separate columns
#Different from matrix in the sense that each column can be of a different type
#Almost always, when you import data from an external data source, you import 
# it using a data frame
x <- data.frame(col1=1:20, col2 = c(T, F, F, T))
x
nrow(x)
ncol(x)
#Check structure of a data frame
str(x)

#Element selection operations are similar to what we have for matrics
x[1]
x[1,1]
x[,2]
x[2:5,1]

#There is also one more operator $ for selecting specific columns of a dataframe
x$col1



#Conditional Statements
#IF
x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


#FOR
for (j in 1:5){
  print(j)
}



x <- c("a","c","d")
for (i in seq_along(x)){
  print(x[i])
}
for (letter in x){
  print(letter)
}


x <- matrix(1:10,2,5)
x
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}


#WHILE
a <- 10
while (a>0){
  print(a)
  a<-a-1
}


#Functions
#Functions in R are objects that are of class function.
func1 <- function(a,b){
  a+b
}

func1(5,10)


square.it <- function(x) {
  square <- x * x
  return(square)
}

square.it(5)

#Loop functions
#lapply - Loop a list and apply a function on each element of list. Result is a list
x <- list(a=1:10, b=rnorm(10))
x
lapply(x,mean)

x <- 1:4
lapply(x,runif)#uniform random variables

#sapply-Simplifies results from lapply. returns a vector if list element is of length 1
#matrix if every element in list of same length, otherwise returns a list

x <- list(a=1:5, b=rnorm(6),c=rnorm(25))
lapply(x,mean)
sapply(x,mean)

#apply - evaluate a function on the margin of an array. Replacement for a for loop
x <- matrix(rnorm(20),2,10)
x
apply(x,2,mean)
apply(x,1,sum)

#t-apply function
#We will use the iris dataset for this example. Load the iris dataset.
data(iris)
#Tells us structure of dataset
str(iris)
#Mean of a variable
mean(iris$Sepal.Length)
#calculate the mean of the Sepal Length but broken by the Species
tapply(iris$Sepal.Length,iris$Species,mean)

#Again, let us do it with one more dataset
data("mtcars")
#What is the structure of dataset
str(mtcars)
#avg mpg for the various transmission types and number of cylinders in car. This is nothing but avg mpg grouped by transmission type and the number of cylinders in car.
tapply(mtcars$mpg, list(mtcars$cyl,mtcars$am),mean)

#Find closest values. Use which function for finding the closest value in a dataset. 
xv <- rnorm(1000,100,10)
which(abs(xv-108)==min(abs(xv-108)))
xv[693]



#Missing values, infinity.
#Many times, mathematical calculations result in Infinity. Infinity is represented by 
#Inf (-Inf) in R
8/0

#Other times, you can get values that are not numbers. They are represented by 
# NaN
0/0

Inf - Inf

#What about Inf + Inf

Inf + Inf

#Missing values in dataframes are a real source of irritation, because they affect the way that model-fitting
#functions operate and they can greatly reduce the power of the modelling that we would like to do.
#Missing values are either NA or NaN. 
# is.na() and is.nan are used for testing na values.
x <- c(1,5,NA,8,NA,12,NaN)
is.na(x)
is.nan(x)

#Remove missing values
x <- c(1,4,3,8,NA,23,54,NA,NA)
missingvalues <- is.na(x)
x[!missingvalues]

#What should be the output here
mean(x)

mean(x,na.rm=T)



#Date and Time functions
#Date class is used to represent dates. Internally, dates are number of days after 1970-01-01
#POSIXlt or POSIXct is used to represent times. 
x<- as.Date("1970-01-01")
x
#unclass(x)
class(x)
unclass(as.Date("2014-12-12"))

x<-Sys.time()
p<-as.POSIXlt(x)
p
names(unclass(p))
p$hour
p$sec

#Reading data into R. 
#There are a range of funtions for reading data into R. read.table and read.csv are most common for tables
#readLines for text data, load for workspaces
#Similarly, for write use write.table, write.Lines, save
#reading data from a csv file

#read.table is the most versatile and powerful function for reading data from 
# external sources
inputdata <- read.table("inputdata.txt",header=TRUE)

#While you can import data using read.table function as well, there are specific 
# functions for csv and excel files
titanicdata <- read.csv("train.csv")
datafile1 <- read.table("train.csv",header=TRUE,sep=",") 


#Writing data to R. Similar to the functions for reading files in R, there are functions for writing back
# data frames to R. Here are some of the most common examples that you would encounter. This list is not 
# exhaustive and there are many more functions available for working with different file types.

write.csv(titanicdata,"~/Desktop/file1.csv")

#Visualization in R
#With ever increasing volume of data, it is impossible to tell stories 
#without visualizations. Data visualization is an art of how to turn numbers into useful knowledge.

#Four basic presentation types
#Comparison
#Composition
#Distribution
#Relationship

#Correspondingly, most common charts are:
#Scatter
#Histogram
#Bar
#Box
#Heat Map
#Correlogram

#For basic graphs, use plot command
#It takes in many parameters from x axis data , y axis data, x axis labels, y axis labels, color and title.

str(AirPassengers)
AirPassengers
#Line Plot
plot(AirPassengers,type="l")  


#Bar Plot
barplot(iris$Petal.Length)


#Box Plot
boxplot(iris$Petal.Length~iris$Species)


plot(x=iris$Petal.Length) #Simple Scatter Plot
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot


library(RColorBrewer)

#Histogram
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,breaks=10, col=brewer.pal(3,"Set3"),main="Set3 3 colors")
hist(VADeaths,breaks=3 ,col=brewer.pal(3,"Set2"),main="Set2 3 colors")
hist(VADeaths,breaks=7, col=brewer.pal(3,"Set1"),main="Set1 3 colors")
hist(VADeaths,breaks= 2, col=brewer.pal(8,"Set3"),main="Set3 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greys"),main="Greys 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greens"),main="Greens 8 colors")

#Let us do some map visualizations
devtools::install_github("rstudio/leaflet")


library(magrittr)
library(leaflet)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=77.2310, lat=28.6560, popup="The delicious food of chandni chowk")
m  # Print the map

#You could use another library called ggplot2

library(ggplot2)  

visualizations <- read.csv("VisualizationData.csv")
#Scatter plot
ggplot(visualizations, aes(Item_Visibility, Item_MRP)) + geom_point() + scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+ scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw() 

ggplot(visualizations, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+
  theme_bw() + labs(title="Scatterplot")

ggplot(visualizations, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ 
  theme_bw() + labs(title="Scatterplot") + facet_wrap( ~ Item_Type)

#Bar chart
ggplot(visualizations, aes(Outlet_Establishment_Year)) + geom_bar(fill = "red")+theme_bw()+
  scale_x_continuous("Establishment Year", breaks = seq(1985,2010)) + 
  scale_y_continuous("Count", breaks = seq(0,1500,150)) +
  coord_flip()+ labs(title = "Bar Chart") + theme_gray()

#Heat Map
ggplot(visualizations, aes(Outlet_Identifier, Item_Type))+
  geom_raster(aes(fill = Item_MRP))+
  labs(title ="Heat Map", x = "Outlet Identifier", y = "Item Type")+
  scale_fill_continuous(name = "Item MRP") 