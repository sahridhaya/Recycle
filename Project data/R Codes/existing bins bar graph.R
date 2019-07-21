PopData <- read.csv(file="C:/Users/hp/Desktop/WardPop.csv", header=TRUE, sep=",")

counts <- c()
wardno <- c()
# Simple Bar Plot
for (i in PopData[,1]) {
  counts <- append(counts, PopData[i,10])
  wardno <- append(wardno, i)
}

barplot(counts, main="Existing number of bins",names.arg = wardno ,
        xlab="Wards",ylab = "No. of aerobin location", col = "red")