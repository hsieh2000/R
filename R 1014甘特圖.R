install.packages("plan")
library("plan")
library("lubridate")
search()

g<-new("gantt")
g<-ganttAddTask(g,description = "graduate on time")
g<-ganttAddTask(g,description = "register",start="2021-09-01",end="2021-09-15",done=1)
g<-ganttAddTask(g,description = "choosing class",start="2021-09-15",end="2021-09-17",done=0,neededby="註冊")
g<-ganttAddTask(g,description = "taking class",start="2021-09-15",end="2021-09-26",done=0)
g<-ganttAddTask(g,description = "withdraw ",start="2021-09-25",end="2021-09-27",done=1)
g

dev.new()
plot(g)

rm(list = ls())

g1<-new("gantt")
g1<-ganttAddTask(g1,description = "刷牙",start="2021-09-25 09:00",end="2021-09-25 09:01",done=1)
g1<-ganttAddTask(g1,description = "吃早餐",start="2021-09-25 09:02",end="2021-09-25 09:12",done=1)
g1<-ganttAddTask(g1,description = "吃午餐",start="2021-09-25 12:00",end="2021-09-25 12:50",done=1)
g1<-ganttAddTask(g1,description = "吃晚餐",start="2021-09-25 06:30",end="2021-09-25 07:00",done=1)
g1<-ganttAddTask(g1,description = "睡覺",start="2021-09-25 12:00",end="2021-09-25 09:00",done=1)
dev.new()
plot(g1)


install.packages("showtext")
install.packages("grid")
install.packages("scales")
install.packages("Cairo")

library("lubridate")
library("ggplot2")
library("ggmap")
library("showtext")
library("grid")
library("scales")
library("Cairo")
search()  

Item<-c("1 Fitness","2 Learning R","3 cooking ","4 trip")
plan_startdate<-c("2021-09-01","2021-10-26","2021-09-16","2021-12-23")
plan_enddate<-c("2021-12-31","2021-11-02","2021-12-31","2021-12-26")
actually_startdate<-c("2021-09-01","2021-10-26","2021-09-16","2021-12-23")
actually_enddate<-c("2021-11-02","2021-11-02","2021-11-02","2021-12-23")

mydata<-data.frame(Item,plan_startdate,plan_enddate,actually_startdate,actually_enddate,stringsAsFactors = FALSE)
str(mydata)#檢查欄位格式

mydata$plan_startdate<-ymd(mydata$plan_startdate)#設定為年月日，轉成日期(要跟前面日期格式相吻和)
mydata$plan_enddate<-ymd(mydata$plan_enddate)
mydata$actually_startdate<-ymd(mydata$actually_startdate)
mydata$actually_enddate<-ymd(mydata$actually_enddate)
str(mydata)

datebreaks<-seq(as.Date("2021-09-01"),as.Date("2021-10-03"),by="1 days")
time<-as.Date("2021-09-30")

dev.new()
ggplot(mydata)+
  geom_linerange(data=mydata,aes(x=Item#進度項目
                                 ,ymin=plan_startdate
                                 ,ymax=plan_enddate)
                 ,size=10,color="#FFBFFF",alpha=0.8)+#alpha分母越大越透明）
  geom_linerange(data=mydata,aes(x=Item#進度項目
                                 ,ymin=actually_startdate
                                 ,ymax=actually_enddate)
                 ,size=8,color="#085264",alpha=0.8)+
  scale_x_discrete(limits=sort(Item,decreasing=T))+#流程依升/降排序
  scale_y_date(position = "right")+#y軸排序方式
  coord_flip()+ #圖表轉正（橫軸縱軸轉向）
  ggtitle(paste("Year-end schedule",mydata$plan_startdate[1],"to",mydata$plan_enddate[4]))+
  theme(
    plot.title=element_text(face="italic",colour="red",hjust=0.5,size=20),
    axis.title=element_blank(),#x軸標題取消
    axis.ticks.y=element_blank(),#y軸標題取消
    panel.grid.major.y=element_line(color="#FFB666",linetype=5),#主杳y軸的線改
    panel.background=element_rect(fill="white"),#背景白色
    axis.text=element_text(colour="black",size=10,face="italic"),
    axis.line.x=element_line()#x軸畫直線
  )