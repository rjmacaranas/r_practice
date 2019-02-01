data()
attach(iris) #attaching iris dataset to script
View(iris) #view dataset
names(iris) #names of variables/column headers
head(iris) #view first 6 observations
levels(Species) #shows levels within variable
summary(iris) #summary stats
str(iris)
plot(Species, Petal.Width) #basic graph
plot(Species, Petal.Width, xlab="Iris Species", ylab="Petal Width (cm)") #one categorical variable, created boxplot
plot(Petal.Length, Petal.Width, xlab="Petal Length (cm)", ylab="Petal Width (cm)") #plot with two quantitative variables, created a scatter plot
abline(lm(Petal.Width~Petal.Length)) #add a trendline
