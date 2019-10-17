
rm(list = ls())

# set working directory
setwd("/users/navyarao/Documents/Data Nest/")
getwd()


# read file 1 which does not have any control characters
file1 = read.delim(file='file_1.txt', header=FALSE, stringsAsFactors=FALSE)
# only one record with one column is generated
file1a = read.delim(file='file_1.txt')
# dot as separator
file1b = read.delim(file='file_1.txt', header=FALSE,sep = ".",stringsAsFactors=FALSE)

# read file 2 which has tab after every sentence
file2 = read.delim(file='file_2.txt', header=FALSE, stringsAsFactors=FALSE)
# only one record with 3 columns is generated
?read.delim
file2a = read.delim(file='file_2.txt', header=FALSE,sep = "\t",
                    stringsAsFactors=FALSE)
file2b = read.delim(file='file_2.txt', header=FALSE,sep = ":",
                    stringsAsFactors=FALSE)

# read file 2 which has tab after every sentence
file3 = read.delim(file='file_3.txt', header=FALSE, stringsAsFactors=FALSE)
# three records are generated with one column

?read.delim
# spaces as separator
file4 = read.delim(file='file_1.txt', header=FALSE,sep = " ",
                    stringsAsFactors=FALSE)

file5 =read.delim(file='Churn.txt',header = TRUE,sep = ",")
