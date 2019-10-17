# Description: data frame

rm(list = ls())

# data frame is like a spreadsheet
# Columns (aka: variables) are vectors
# Rows (aka: observations) are lists and must contain an equal number of columns

v1 = c(1,2,3,4,5,6)
v2 = c("a","b","c","d","e","f")
v3 = month.abb[1:6] # e.g. jan, feb, mar, apr, may, jun
?month.abb
help(month.abb)
df1 = data.frame(v1,v2,v3)
class(df1)
class(v1)

v4 = c('a','b','c','d','e','f')
df1["v4"] = v4

# vectors need to have identical lengths (lengths aka "observations")
v1 = c('a','b','c','d','e')
v5 = c('a','b','c','d')

df2 = data.frame(v1,v5) #oops - different # of rows
R.Version()
# internal structure of data frame
str(df1)
summary(df1)

# strings are converted to factors - this is a default behavior

# I() is "Inhibit conversion
df3 = data.frame(v1,I(v2),I(v3))
str(df3)

df4 = data.frame(v1,v3,stringsAsFactors=FALSE)
str(df4)

#accessing individual elements
df3[3,2]
df3[3,'v3']

# accessing individual columns
df1$v2
class(df1$v2)
df1["v3"]

# subsets
df4 = data.frame(LETTERS,letters,position=1:length(letters))

df4[3,] # returns the 3rd row
df4[,3] # returns the 3rd column
df4$position
df4["letters"] # returns the "letters" column
df4[3:8,2] # returns values from column 2 for rows 3 through 8
df4[3:8,2:3]
df4[c(1:5),-c(2)]
df4[df4$position > 10,]
df4[df4$LETTERS == "A" | df4$LETTERS == "Z",]
df4[df4$LETTERS == "A" | df4$letters == "z",]
df4[df4$position > 10,c(1,2)]
df4[df4$position > 10,1:2]


##################################################
v1 = c(18,20,22,24,25,26)
v2 = c(300,400,500,600,700,800)
df5 = data.frame(v1,v2)
df = read.csv("Churn.csv")

df2 = scan(file='test.txt',sep=',')

#functions
length(df4)
dim(df4)
nrow(df4)
ncol(df4)

# logical conditions used as selectors
df4[LETTERS=="R",]
df4[LETTERS=="R" | LETTERS=="T",] # | means "or". & means "and"
df4[LETTERS=="S" | letters=="Z",]

# Naming rows and columns
colnames(df1)          # returns column names
colnames(df1) = c("Number","Position","Month","letters")
rownames(df1) = c("EMP1","EMP2","EMP3","EMP4","EMP5","EMP6")
rownames(df1)          # returns row names

# logical functions on data frames
is.integer(df1)        # verifies if it is integer
is.character(df1)      # verifies if it is character
is.data.frame(df1)     # verifies if it is data frame
is.matrix(df1)

# Misc Functions 
summary(df1)           # displays various details of each column
str(df1)
class(df1)             # displays class/data type
class(df1$Number)        # displays class/data type of v1 column
unique(df1$Number)            # displays unique values with in each column
table(df4$position)             # displays number of values for each unique value
length(df1)            # displays number of columns/vectors 
dim(df1)               # displays number of rows and columns
head(df1)              # displays top 6 rows
tail(df1)              # displays last 6 rows
nrow(df1)              # displays numberof rows
ncol(df1)              # displays numberof columns

#rbind - combines 2 data frames by adding rows
# for rbind, number of columns in both tables is same and column names should match
rm(list = ls())
DF1 = data.frame(F=c(1,2,3,4,5),S=c('A','B','C','D','E'),T=c(T,F,T,F,T))
DF11 = data.frame(F=c(1,2,3,4),S=c('A','B','C','D'),T=c(F,T,F,T))
DF2 = data.frame(F=c(1,2,30,40),S=c('AA','BB','CC','DD'),T=c(T,F,T,F))
DFX1 = data.frame(F=c(1,1,3,3),X=c('A','B','C','D'),Y=c(T,F,T,F))

DFx = data.frame(F=c(1,2,30,40),S=c('A','x','z','u'),U=c(T,F,T,F))
DF3=rbind(DF1,DF2)
DFx2 = rbind(DF1,DFx) # fails as column names does not match

df1 = data.frame(f=c(1,2,3,4),s=c('A','B','C','D'),t=c(T,F,T,F))
df2 = data.frame(f=c(1,2,30,40),s=c('AA','BB','CC','DD'),t=c(T,F,T,F))
df3 = rbind(df1,df2)

#cbind - combines 2 data frames by adding columns
# for cbind, number of rows in both tables is same

DF4=cbind(DF11,DF2)
df4 = data.frame(x=c(1,2,30,40,50),y=c('AA','BB','CC','DD','EE'),z=c(T,F,T,F,F))
DF5 = cbind(DF1,df1) # failes as number of rows are different
colnames(DF4)
DF4$F

# Merging two data frames 
?merge
DF5=merge(DF1,DF2,by='F') # merges columns with same values in specified column 'F'
DF6=merge(DF1,DF2)  # no output
DF7=merge(DF1,DF2,by='F',all=TRUE)
DF72=merge(DF2,DF1,by='F',all=TRUE)
DF8=merge(DF1,DF2,by='F',all.x = TRUE)
DF82=merge(DF1,DF2,by='F',all.x = FALSE)
DF9=merge(DF1,DF2,by='F',all.y = TRUE)

DF10 = merge(DF1,DF2,by='T',all=FALSE)

DF11 = merge(DF1, DFX1, by='F',all = TRUE)


DF20 = DF1[DF1$F %in% DF2$F,] # A and B common
DF22 = DF1[DF1$T %in% DF2$T,] # A and B common

DF21 = DF1[!DF1$F%in%DF2$F,] # A only excluding common

DF31 = DF2[!DF2$F %in% DF1$F,]
