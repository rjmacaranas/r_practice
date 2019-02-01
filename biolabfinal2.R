df <- read.csv("biolabproject2.csv", header=TRUE)
attach(df)
var.test(Number_of_colonies~Location, alternative=c("two.sided"), ratio=1)
#Variance between the two groups is the same (p-value>0.05)
t.test(Number_of_colonies~Location, alternative=c("two.sided"), paired=FALSE, var.equal=TRUE)
#We reject the null hypothesis, and there is a significant difference in number of colonies between indoor and outdoor groups (t=-2.4262, df=8, p-value=0.04145).