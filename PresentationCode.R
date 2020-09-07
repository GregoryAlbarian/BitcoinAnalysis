install.packages("ggplot2")
install.packages("plyr")
#, "reshape2", "plyr", "languageR", "lme4", "psych")

library(ggplot2)
library(plyr)

#choose BTCgood3.csv
bitcoinData<-read.csv(file.choose())

head(bitcoinData[3:6])
tail(bitcoinData[3:6])

#bitcoinData


summary(bitcoinData[3:6])

bitcoinData$range<-bitcoinData$high-bitcoinData$low
#bitcoinData$range
summary(bitcoinData$range)

bitcoinData$priceChange<-bitcoinData$open-bitcoinData$close
summary(bitcoinData$priceChange)

bitcoinData$counter<-seq(1:nrow(bitcoinData))
#bitcoinData$counter

#gg<-ggplot(bitcoinData, aes(x=counter, y=close))
#gg<-gg+geom_point(colour="blue")
#gg<-gg + labs(x = "New x label")


#graph 1
gg<-ggplot(bitcoinData, aes(x=counter, y=priceChange)) + geom_point(colour="blue")
gg + labs(x= "days")

#graph 2
gg2<-ggplot(bitcoinData, aes(x=close, y=range)) + geom_point(colour="red")
gg2 + labs(x= "days")

#graph 3
gg3<-ggplot(data=bitcoinData, aes(bitcoinData$range)) + geom_histogram(colour="red", fill="yellow")
gg3+ labs(x= "range")

#graph 4
gg4<-ggplot(data=bitcoinData, aes(bitcoinData$priceChange)) + geom_histogram(colour="red", fill="yellow")
gg4+ labs(x= "price change")

#need to do these
#comparing with the price of precious metals because it has non-inflationary value


gg5<-ggplot(bitcoinData, aes(x=counter, y=priceChange)) + geom_point(colour="blue")
gg5 + labs(x= "days")


gg6<-ggplot(bitcoinData, aes(x=close, y=range)) + geom_point(colour="green")
gg6 + labs(x= "days")