list.files()
df <- read.csv("Lab5_AntibioticResistance.csv", header=TRUE)
attach(df)

library(ggplot2)
ggplot(df, aes(Disc_Type, Zone_of_Inhibition_mm, fill=Bacteria_Type)) + 
geom_boxplot(position="dodge") + stat_summary(fun.y = "mean") + 
labs(x= "Disc Type", y= "Zone of Inhibition (mm)", fill="Bacteria Type") + 
stat_summary(geom="errorbar", fun.data = mean_se, position="dodge") + theme_bw() +
theme(panel.border = element_blank(), panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
