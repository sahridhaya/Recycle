library(plotrix)
#population metric
pop <- c(16882,9355,9696,11782,16063,11599,12215,7951,11845,9280,9958,9559,8484,8720,9123,6817,13079,4406,9576,10146,11466,9810,9870,9018,9677,8696,5069,6378,8054,8753,11739,8598,10271,8825,7462,9967,13641,8661,7316,8750,5674,15374,7104,8348,9810,8594,12254,11694,8576,10376,7257,10848,8380,12624,12714,9918,9805,8697,10122,9553,10384,8498,8467,7529,16580,7825,11779,9786,7768,8096,7788,7853,7875,4222,3098,15031,14299,8215,6296,9591,8258,7661,11562,6913,8536,11749,10705,12991,9950,9088,11075,7716,8983,20244,7980,5065,9023,7803,12538)
#average waste generated per person per day
av_waste=0.4
num <- seq(from=1,to=length(pop),by=1)
waste_ward=0
for(i in num)
{
  waste_ward[i]=pop[i]*av_waste
}
waste_proc <- c(0,0,0,0,0,200,70,0,0,0,0,0,0,0,0,0,460,130,0,0,70,0,0,260,70,0,3220,0,0,0,2660,0,0,0,0,70,0,0,0,70,0,170,330,830,180,0,0,70,0,0,0,0,0,130,130,0,0,0,0,0,100,260,330,0,0,0,0,0,330,660,1073,1500,0,0,0,0,0,0,700,0,0,0,750,0,0,70,183,0,0,340,0,0,0,0,0,0,0,0,0,0,0)
proc_ratio=0
for (i in num) {
  proc_ratio[i]=waste_proc[i]/waste_ward[i]
}
#removing zeroes
del <- c(0)
proc_ratio <- proc_ratio [! proc_ratio %in% del]
#rounding off the decimals to 3 digits 
proc_ratio <- round(proc_ratio,digits=3)
#creating labels based on ward number
labl <-c("Ulloor","Edavacode","Pattom","Muttada","Chettivilakam","Kuravankonam","Nanthancode","Palayam","Peroorkada","Vattiyoorkavu","Thirumala","Poojappura","Valiyasala","Jagathy","Karamana","Thrikanapuram","Nedumacaud","Kalady","Kottapuram","Vizhinjam","Harbar","Kallipankulam","Attukal","Chala","Manacaud","Muttathara","Fort","Sreekantesvaram","Chakkai","Vallakadavu")
pie3D(proc_ratio,radius = 0.5,height = 0.05,theta = pi/4 ,col=rainbow(length(proc_ratio)),explode = 0.08)
legend("bottomright",legend = labl,cex=0.58,text.font = 2, fill=rainbow(length(proc_ratio)),bty = 'n',ncol = 3)
text(x=-0.5,y=1,labels = "waste processing capability",cex = 2)
