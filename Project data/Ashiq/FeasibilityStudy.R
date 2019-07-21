#To estimate the overflow of aerobin capacity

library(ggplot2)
Avg_Capacity=50  #capacity of one aerobin per day without overflow
  
w<- seq(from=1,to=52,by=1) #week 
x<-Avg_Capacity*7 #weekly inflow of waste
initial<-Avg_Capacity*37 #first month plus first week of next month

sum=0
arr<-c(0)
for(num in w)
{
    sum<-(initial-(0.7*x)) + x
    initial<-sum
    ar[num]= initial
    
    
}
arr #add this array to 6th week of inflow chart





