install.packages("lubridate")
install.packages("gglots2")
library(lubridate)
library(ggplots2)

setwd("C:/Users/shain/R")
dir()
INDEX0=read.csv("2020-2022士林溫度.csv")
View(INDEX0)
View(INDEX0[3:730,4:27])
INDEX0_sub0 <-(INDEX0[3:730,4:27])
View(INDEX0_sub0)
colnames(INDEX0_sub0)=c("0","1","2","3","4","5","6","7","8","9","10",
                        "11","12","13","14","15","16","17","18","19",
                        "20","21","22","23")
View(INDEX0_sub0)
str(INDEX0_sub0)

INDEX0_sub0$'0' <-as.numeric(as.character(INDEX0_sub0$'0'))
INDEX0_sub0$'1' <-as.numeric(as.character(INDEX0_sub0$'1'))
INDEX0_sub0$'2' <-as.numeric(as.character(INDEX0_sub0$'2'))
INDEX0_sub0$'3' <-as.numeric(as.character(INDEX0_sub0$'3'))
INDEX0_sub0$'4' <-as.numeric(as.character(INDEX0_sub0$'4'))
INDEX0_sub0$'5' <-as.numeric(as.character(INDEX0_sub0$'5'))
INDEX0_sub0$'6' <-as.numeric(as.character(INDEX0_sub0$'6'))
INDEX0_sub0$'7' <-as.numeric(as.character(INDEX0_sub0$'7'))
INDEX0_sub0$'8' <-as.numeric(as.character(INDEX0_sub0$'8'))
INDEX0_sub0$'9' <-as.numeric(as.character(INDEX0_sub0$'9'))
INDEX0_sub0$'10' <-as.numeric(as.character(INDEX0_sub0$'10'))
INDEX0_sub0$'11' <-as.numeric(as.character(INDEX0_sub0$'11'))
INDEX0_sub0$'12' <-as.numeric(as.character(INDEX0_sub0$'12'))
INDEX0_sub0$'13' <-as.numeric(as.character(INDEX0_sub0$'13'))
INDEX0_sub0$'14' <-as.numeric(as.character(INDEX0_sub0$'14'))
INDEX0_sub0$'15' <-as.numeric(as.character(INDEX0_sub0$'15'))
INDEX0_sub0$'16' <-as.numeric(as.character(INDEX0_sub0$'16'))
INDEX0_sub0$'17' <-as.numeric(as.character(INDEX0_sub0$'17'))
INDEX0_sub0$'18' <-as.numeric(as.character(INDEX0_sub0$'18'))
INDEX0_sub0$'19' <-as.numeric(as.character(INDEX0_sub0$'19'))
INDEX0_sub0$'20' <-as.numeric(as.character(INDEX0_sub0$'20'))
INDEX0_sub0$'21' <-as.numeric(as.character(INDEX0_sub0$'21'))
INDEX0_sub0$'22' <-as.numeric(as.character(INDEX0_sub0$'22'))
INDEX0_sub0$'23' <-as.numeric(as.character(INDEX0_sub0$'23'))

str(INDEX0_sub0)
View(INDEX0)
dev.new()
boxplot(INDEX0_sub0,
        xlab = "時間",
        ylab = "溫度",
        main = "近兩年溫度小時變化圖",
        col=rainbow(23),outline=F)

abline(h=10, col="blue", lty=2)
abline(h=35, col="red", lty=2)


