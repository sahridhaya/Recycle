#total waste generated in TMC per day (60% of 353 tonnes)
TotWaste = 211800

PopData <- read.csv(file="C:/Users/hp/Desktop/WardPop.csv", header=TRUE, sep=",")

#TMC population
Pop = sum(PopData$Population)
Pop

#waste generated per capita per day
WasGen = TotWaste/Pop
WasGen

WG <- c()
#waste generated by wards per day
for (i in PopData[,1] ) {
  WG <- append(WG, (PopData[i,4] * WasGen))
  print(WG[i])
}

PopData$Waste.gnerated.by.ward <- WG
#write.csv(PopData,file =  "C:/Users/hp/Desktop/WardPop.csv")

#capacity of one aerobin location
Cap = 35*10

#Number of aerobins required (60% waste is dealt with at source level)
m <- c()
for (i in PopData[,1] ) {
  x = (WG[i]/Cap) * 0.4
  m <- append(m, round(x, digits = 0))
  print(m[i])
}

PopData$Required.number.of.bins <- m
PopData$Bins.to.be.constructed <- PopData$Required.number.of.bins - PopData$Existing.bins
#write.csv(PopData,file =  "C:/Users/hp/Desktop/WardPop.csv")

sum = 0
for (i in PopData[,1] ) {
  sum = m[i] + sum
}
sum