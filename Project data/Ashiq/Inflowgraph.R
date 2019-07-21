library(ggplot2)

setwd("E:/Project RECYCLE/Recycle/Project data")
sat<- read.csv("InflowGraph.csv")
print(sat)
week<- sat$Week
Inflow_Outflow_capacity<- sat$Inflow.Capacity
pro<- sat$data

#WasteGenerated_ward_day<- sat$Total.waste.generated.in.ward.per.week

avg_waste_ward = (211800*0.4*7)/(100) #considering 60% is handled at source level
Avg_Capacity<- 15000 

#optional plot 
qplot(Week,Inflow_Outflow_capacity, data=sat,color=pro , 
      geom = c("point","smooth"), main="Aerobin Capacity ~ Waste Generated" )

#plot.new()
plot(week,Inflow_Outflow_capacity,col=1, xlab="Week",ylab="Waste Inflow with 70% outflow",type='l',lwd=3)
abline(h=1900, col="yellow",lwd=2 )
abline(h=Avg_Capacity, col="blue",lwd=3)
abline(v=52, col="green",lwd=2)
abline(v=130.7,col="red",lwd=2)




