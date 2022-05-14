sche <- function(a,b,c,d,w,x,y,z,n1,n2,n3,n4){  
  library("lubridate")
  library("ggplot2")
  library("ggmap")
  library("showtext")
  library("grid")
  library("scales")
  search()  
  

  Item<-c(n1,n2,n3,n4)
  plan_startdate<-c("2021-09-01","2021-10-01","2021-11-15","2021-12-10")
  plan_enddate<-c("2021-09-29","2021-10-31","2021-11-28","2021-12-31")
  actually_startdate<-c(a,b,c,d)
  actually_enddate<-c(w,x,y,z)
  
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
                   ,size=10,color="#085264",alpha=0.5)+#alpha分母越大越透明）
    geom_linerange(data=mydata,aes(x=Item#進度項目
                                   ,ymin=actually_startdate
                                   ,ymax=actually_enddate)
                   ,size=10,color="yellow",alpha=0.8)+
    scale_x_discrete(limits=sort(Item,decreasing=T))+#流程依升/降排序
    scale_y_date(position = "right")+#y軸排序方式
    coord_flip()+ #圖表轉正（橫軸縱軸轉向）
    ggtitle(paste("My English Learning Schedule",mydata$plan_startdate[1],"to",mydata$plan_enddate[4]))+
    theme(
      plot.title=element_text(face="italic",colour="red",hjust=0.5,size=10),
      axis.title=element_blank(),#x軸標題取消
      axis.ticks.y=element_blank(),#y軸標題取消
      panel.grid.major.y=element_line(color="#FFB666",linetype=5),#主杳y軸的線改
      panel.background=element_rect(fill="white"),#背景白色
      axis.text=element_text(colour="black",size=10,face="italic"),
      axis.line.x=element_line()#x軸畫直線
    )
}

sche("2021-09-01","2021-10-04","2021-11-20","2021-12-14","2021-09-30","2021-10-28","2021-11-30","2021-12-29","1 Reading","2 listening ","3 speaking ","4 writting ")