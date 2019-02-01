install.packages("ggplot2")
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width)) + geom_point()
ggplot(iris, aes(Petal.Length, Petal.Width)) + geom_point() + labs(x="Petal Length (cm)", y="Petal Width (cm)")
ggplot(iris, aes(Petal.Length, Petal.Width, color=Species)) + geom_point() + labs(x="Petal Length (cm)", y="Petal Width (cm)")

data("Orange")
View(Orange)
plot(Orange$age, Orange$circumference, xlab="Age", ylab="Circumference")

ggplot(Orange, aes(Orange$age, Orange$circumference)) + geom_point() + labs(x="Age", y="Circumference")

df <- read.csv("BIO263_Lab1_ClassData (1).csv" ,header=TRUE)
