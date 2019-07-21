
library(graphics)

tab<- read.csv("E:/Project RECYCLE/Recycle/Aerobin data/CSV/Medical College.csv")
names(tab)

food<-tab$Waste.generated..kg.
subset= mean(food,na.rm=T)
subset
Waste_Generated_kg<- tab$Waste.generated..kg.
Date_days<-tab$Date
Inflow<- tab$Inflow
Outflow<-tab$Outflow
#section 2
#Try this separately : different plot
scatter.smooth(y=Waste_Generated_kg,x=Date_days,main="ABC Ward",ylim=c(0,350))

