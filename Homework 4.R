list.files()
df <- read.csv("Lab4_SealData.csv" ,header=TRUE)
attach(df)

library(ggplot2)
ggplot(df, aes(Tide_ft, Seals)) + geom_point() + labs(x="Tide (ft)", y= "Seals") + geom_smooth(method="lm", se=F)

list.files()
da <- read.csv("Lab4_PierData_DepthSalTemp.csv" ,header=TRUE)
attach(da)

ggplot(da, aes(depth_m, salinity_pss)) + geom_point() + labs(x="Depth (m)", y= "Salinity (pss)") + geom_smooth(method="lm", se=F)

ggplot(da, aes(depth_m, temp_c)) + geom_point() + labs(x="Depth (m)", y= "Temperature (C)") + geom_smooth(method="lm", se=F)
