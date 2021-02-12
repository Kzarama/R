# information of the dataset
str(mtcars)
# class of a specific row
class(mtcars$vs)
# change the class of the row
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)
# summary of the dataset
summary(mtcars)
# operations with the rows
wt <- (mtcars$wt*1000)/2
# change information of the dataset
mtcars.new <- transform(mtcars, wt=wt*1000/2)
mtcars.new
summary(mtcars)

# Vectors
study_time <- c(25,5,10,15,10)
read_time <- c(30,10,5,10,15)
learning_time <- study_time + read_time
learning_time

learning_days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
learning_days

more_20_min_days <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
more_20_min_days

# Matrix
matrix_time <- matrix(c(study_time, read_time), nrow = 2, byrow = TRUE)
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
time <- c("study time", "read time")

colnames(matrix_time) <- days
rownames(matrix_time) <- time

matrix_time

colSums(matrix_time)

final_matrix <- rbind(matrix_time, c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1, 5]

# Search in the dataset
mtcars[mtcars$cyl<6,]

orangeec[orangeec$GDP.PC>=15000,]

orangeec[orangeec$Creat.Ind...GDP<=2,]

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >= 4.5,
                      select = Creat.Ind...GDP)
neworangeec

# change names of the rows
## install plyr with install.packages("plyr")
rename(orangeec, c("Creat.Ind...GDP"="AporteEcNja"))

course_level <- c("Basic", "Medium", "Advanced")
course_level

head(orangeec)
tail(orangeec)

# information of the dataset
glimpse(orangeec)

# list
my_vector <- 1:8
my_vector
my_matrix <- matrix(1:9, ncol = 3)
my_matrix
my_df <- mtcars[1:4, ]
my_df
my_list <- list(my_vector, my_matrix, my_df)
my_list