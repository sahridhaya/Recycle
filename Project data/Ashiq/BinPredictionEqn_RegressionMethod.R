
library(tidyverse)
library(ggplot2)

input=data.frame(
 sl_no = c(1:7), 
  location = c("Ulloor market","Airport bridge","Poojapura","Jagathy","Manacadu","Sulaiman street","Vattiyoorkavu"),
  waste_collected_kg = c(87.87, 7.29, 16.25, 46.8, 17.95, 25.54, 3.716), 
  cap_kg = c(12000,5000,6000,50000,2000,10000,4000), 
  process_kg = c(200,83,100,830,33,170,70),
  Waste_Generated_per_ward = c(4640,3415,6138,3340, 3141,5196, 3987),
  population = c(11599, 8536, 15344, 8348, 7853, 12991, 9967),
  
stringsAsFactors = FALSE
)


print(input)

capacity<-input$cap_kg
Waste_Generated_ward<-input$Waste_Generated_per_ward 
waste_processing_rate<-input$process_kg
ward_population<-input$population
Location<-input$location
collected<-input$waste_collected_kg


plot(capacity~ward_population,input)
plot(capacity~waste_processing_rate,input)
plot(capacity~Waste_Generated_ward,input)
coplot(capacity~ward_population|Waste_Generated_ward, panel=panel.smooth)

#linear model equation to find the relation between parameters
model2<- lm(capacity~ward_population + Waste_Generated_ward + waste_processing_rate) 
model2
plot(model2)
predict(model2)

#to get the summary of each para
summary(capacity)
summary(waste_processing_rate)
summary(Waste_Generated_ward)
summary(ward_population)

#substitute values to predict Capacity in kilograms , assume processing rate as *1/55 of waste generated per ward
#enter the value of population of desired ward

sub_population<-958000 #trivandrum district population
sub_waste_generation<-sub_population*0.4 #0.4 is ssumed to be the average waste generated per person
  
Tot_capacity<- predict(model2,data.frame(Waste_Generated_ward=sub_waste_generation,
                                        ward_population=sub_population,
                                          waste_processing_rate=sub_waste_generation/55))
                               
print(paste(Tot_capacity,"is the required capacity of total facility"))

#Calculating no of bins in a ward
aerobin = Tot_capacity/500
print(paste(round(aerobin), "bins are required"))

 


