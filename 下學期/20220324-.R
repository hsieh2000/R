install.packages("lubridate")
install.packages("gglots2")
install.packages(scales)
library(lubridate)
library(ggplots2)
library(scales)
options(scipen = 999)
setwd("C:/Users/shain/R/tmp")
dir()

path<-"C:/Users/shain/R/tmp"
files<- list.files(path=path,pattern="*.csv")
files

df1<-data.frame()
df2<-data.frame()

for(file in files){
  df1<-read.csv(paste(path,file,sep="/"))
  df2<-rbind(df2,df1)
}
write.csv(df2,file="tmp.csv")
dir()

yh=read.csv("tmp.csv")
View(yh)
  