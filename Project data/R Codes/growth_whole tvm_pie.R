#average amount of waste per day
wa <- c(7.29) #Airport bridge
wb <-c(52.36) #ambalamukk
wc <-c(40.49) #chakai
wd <-c(46.80) #jagathy
we <-c(212.97) #kalladimugham
wf <- c(9.01) #kallipankulam
wg <- c(249.86) #karamana
wh <-c(11.39) #kunjalamoodu
wi <- c(17.71) #manacadu
wj <- c(40.96) #medical college
wk <-c(5.39) # peroorkada market
wl <- c(16.25) #poojapura
wm <- c(13.97) #prasanth nagar
wn <- c(13.13) #sulaiman street1
wo <- c(31.36) #sulaiman street2
wp <- c(32) #sulaiman street3
wq <- c(30.18) #sulaiman street4
wr <- c(25.54) #sulaiman street5
ws <- c(87.87) #Ulloor
wt <- c(3.69) #vattiyoorkavu

#consolidating to a single vector

w <- c(wa,wb,wc,wd,we,wf,wg,wh,wi,wj,wk,wl,wm,wn,wo,wp,wq,wr,ws,wt)

#finding number of places with low,mid and high waste inflow

low=0
mid=0
high=0
num <- seq(from=1,to=20,by=1)
for(i in num)
{
  if(w[i]<50)
  {
    low=low+1
  }
else if(w[i]>50 && w[i]<150)
{
  mid=mid+1
}
else if(w[i]>150)
{
  high=high+1
}
}
result <- c(low,mid,high)
lbls <-c("low","mid","high")
lbl <-c(low,mid,high)
pie(result,labels=lbls,col=rainbow(length(lbls)),main="waste_inflow")
legend("bottomright",legend=lbl,cex = 0.8,fill=rainbow(length(lbls)),title ="number of wards")
