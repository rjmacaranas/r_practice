cft <- read.csv("ceftriaxone.csv", header=TRUE)
attach(cft)
library(ggplot2)
ggplot(cft, aes(x=Group, y=Number.of.strains, fill=MIC)) + geom_bar(stat="identity", position=position_dodge()) + theme_classic() + labs(x="Group", y="Number of strains")
