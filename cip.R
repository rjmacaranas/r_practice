cip <- read.csv("ciprofloxacin.csv", header=TRUE)
attach(cip)
library(ggplot2)
ggplot(cip, aes(x=Group, y=Number.of.strains, fill=MIC)) + geom_bar(stat="identity", position=position_dodge()) + theme_classic() + labs(x="Group", y="Number of strains")

anova <- aov(Number.of.strains~Group)
summary(anova)
TukeyHSD(anova)