df <- read.csv("Blepharisma.csv",header=TRUE)
attach(df)
var.test(Rate~Days, alternative=c("two.sided"), ratio=1)
#Variance between the two groups is not the same (p-value<0.05)
t.test(Rate~Days, alternative=c("two.sided"), paired=FALSE, var.equal=FALSE)
#We reject the null hypothesis, and there is a significant difference in the rate of growth between younger (day1-7) and older (day14-21) Blepharisma. (t=3.0008, df=14.045, p-value=0.009508)

library(ggplot2)
ggplot(df, aes(x=Days, y=Rate)) + geom_boxplot() + theme_classic() + labs(x="Days", y="Population growth rate (Individuals/mL)")
