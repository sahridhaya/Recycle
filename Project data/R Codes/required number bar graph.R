PopData <- read.csv(file="C:/Users/hp/Desktop/WardPop.csv", header=TRUE, sep=",")

counts <- c()
wardno <- c()
# Simple Bar Plot
for (i in PopData[,1]) {
  counts <- append(counts, m[i])
  wardno <- append(wardno, i)
}

barplot(counts, main="Required number of bins",names.arg = wardno ,
        xlab="Wards",ylab = "No. of aerobin location", col = "green")