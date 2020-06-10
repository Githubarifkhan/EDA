data(mtcars)
str(mtcars)
head(mtcars)
fivenum(mtcars$mpg)
hist(mtcars$mpg, breaks = 10)
IQR(mtcars$mpg) #outliers
boxplot(mtcars$mpg)
mtcars<-edit(mtcars)
boxplot(mtcars$mpg) #shows outliers now as changes made from edit
data(mtcars)
str(mtcars)
summary(mtcars)
boxplot(mtcars) 
boxplot(mtcars$mpg~mtcars$cyl)
bwplot(mtcars$mpg~mtcars$cyl)
qplot(mtcars$mpg,mtcars$cyl,data=mtcars,geom="boxplot")
library(survival)
library(Formula)
library(Hmisc)
install.packages("psych")
library(psych)

tidescribe(mtcars) #gives 10 percent,20 percent values also
describe(mtcars$mpg) #missing values and unique values
fivenum(mtcars$mpg)
A1<-summarize(mtcars$mpg,mtcars$cyl,summary)
A1
pie(mtcars$mpg,mtcars$cyl)


data(iris)
head(iris)
str(iris)
boxplot(iris$Sepal.Length ~ iris$Species)
boxplot(iris$Sepal.Length ~ iris$Species,main="Petal Length") 
boxplot(iris$Sepal.Length ~ iris$Species,main="Petal Length",xlab = "Species",ylab="Petal Length",col="blue") 
par(bg="skyblue")

library(lattice)
bwplot(iris$Sepal.Length ~ iris$Species) #Box Wiskers plot
xyplot(iris$Sepal.Length ~ iris$Species,col="red",pch=20)
#pch shows the pattern of design
install.packages("ggplot2")
library(ggplot2)
qplot(iris$Species,iris$Sepal.Length,data=iris,geom="boxplot")

summary(iris)
