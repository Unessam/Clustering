require(pacman)
p_load(rio)
p_load(psych)
install.packages('cluster')
install.packages("rattle")
mypath= 'C://Users//ARAD//Desktop//Data science//Salford//handouts//data mining//ASDM//w4'
setwd(mypath)
getwd()
cpc<- import('C://Users//ARAD//Desktop//Data science//Salford//handouts//data mining//ASDM//w4//costpercompany.csv')
View(cpc)
dim(cpc)
summary(cpc)
head(cpc)
plot(cpc)
library(cluster)
library(rattle)
cpc_s<-scale(cpc[,2:9])
View(cpc_s)
cpc_km<-kmeans(cpc_s, 4)
View(cpc_km)
attributes(cpc_km)
cpc_km$cluster
cpc_km$centers
cl<-cbind(cpc_km$cluster)
cl
clusplot(cpc[,2:9], cpc_km$cluster, shade=T, labels=2, lines=0)
 
