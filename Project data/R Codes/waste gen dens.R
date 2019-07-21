wst <- read.csv(file="C:/Users/hp/Desktop/ward waste pop.csv", header=TRUE, sep=",")

library(tidyverse)
library(ggplot2)

x <- wst$Population
y <- wst$Waste.generated


qplot(x,y,data=wst, size = Waste.per.capita , color = Density, 
      main = "Waste generation density",
      xlab = "Population",ylab="Waste generated per ward per day")
