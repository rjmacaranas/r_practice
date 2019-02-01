min <- read.csv("minocycline.csv", header=TRUE)
attach(min)
library(ggplot2)
ggplot(min, aes(x=Group, y=Number.of.strains, fill=MIC)) + geom_bar(stat="identity", position=position_dodge()) + theme_classic() + labs(x="Group", y="Number of strains")
