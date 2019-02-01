data("Titanic")
View(Titanic)

attach(ToothGrowth)
ToothGrowth$dose <- as.factor(dose)
library(ggplot2)
ggplot(ToothGrowth, aes(ToothGrowth$dose, ToothGrowth$len, fill=supp)) + geom_boxplot() + labs(x="Dose (mg/day)", y="Length (mm)")

data("mtcars")
View(mtcars)
summary(mtcars)
ggplot(mtcars, aes(mtcars$wt, mtcars$mpg, color=cyl)) + geom_point() + labs(x="wt", y="mpg") + geom_smooth(method = "lm", se=F)
mtcars$cyl <- as.factor(mtcars$cyl)

data("InsectSprays")
View(InsectSprays)
ggplot(InsectSprays, aes(InsectSprays$spray, InsectSprays$count)) + geom_boxplot() + labs(x="Types of Spray", y="Insect Count")

data("airquality")
attach(airquality)
View(airquality)
str(airquality)
airquality$Month <- as.factor(Month)
ggplot(airquality, aes(Temp, Ozone, colour=Month)) + geom_point() + labs(x="Temperature (F)", y="Ozone (ppb)") + geom_smooth(method="lm", se=F)

list.files()
df <- read.csv("Lab2data_QuadratSampling.csv",header=TRUE)
attach(df)
ggplot(df, aes(PVC, Diversity, colour=Habitat)) + geom_point() + geom_smooth(method = "lm", se=F)

list.files()
da <- read.csv("BIO263_Lab1_ClassData (1).csv",header=TRUE)
attach(da)
ggplot(da, aes(Background, Bead.Frequencies, colour=Bead.Color)) + geom_point() + labs(x="Background", y="Bead Frequencies", colour="Bead Color")
