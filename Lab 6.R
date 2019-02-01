attach(attitude)
?attitude #Look up metodata
cor.test(raises, rating)
plot(raises, rating)
abline(lm(rating~raises))

attach(beaver1)
?beaver1
cor.test(time,temp) #There is a significant positive correlation between beaver body temperature and time of day (R=0.439, df=112, p-value = 1.031e-06).

attach(Orange)
View(Orange)
treemod <- lm(circumference ~ age)
summary(treemod) #There is a significant positive linear relationship between orange circumference and age (F-166.4, df=(1, 33), p-value<0.001) #second line of the figure caption

attach(anscombe)
anscom <- lm(x2 ~ y3)
summary(anscom) #There is a significant positive linear relationship between x2 and y3 (F-17.97, df=(1, 9), p-value<0.05)

attach(sleep)
var.test(extra ~ group, alternative=c("two.sided"), ratio=1)
#Variance between the two groups is the same (p-value>0.05)

#When variance is equal
t.test(extra ~ group, alternative=c("two.sided"), paired=FALSE, var.equal=TRUE)
#We fail to reject the null hypothesis, that there is a significant difference in the variances between the two groups.

attach(ToothGrowth)
var.test(len~supp, alternative=c("two.sided"), ratio=1)
#Variance between the two groups is the same (p-value>0.05)

t.test(len~supp, alternative=c("two.sided"), paired=FALSE, var.equal=TRUE)

attach(iris)
irismod <- aov(Petal.Length ~ Species)
summary(irismod)
TukeyHSD(irismod)

attach(chickwts)
chickwts <- aov(weight~feed)
summary(chickwts)
TukeyHSD(chickwts)
#Meatmeal and caesin equally as good because p-value>0.05 (fail to reject the null hypothesis)
#Negative means difference
#horsebean, linseed, soybean significant
#Post-hoc Tukey HSD shows significant weight difference between two feeds, where casein is a better feed to increase the weight than horsebean, linseed, and soybean (p<0.05). Meatmeal and sunflower are equally as good (p>0.05).
