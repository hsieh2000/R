#hw2
#設定位置
setwd('/Users/pppppan0525/Desktop/大三上/R/期末')
dir()
#讀取資料
data <- read.csv("/Users/jeremyhsieh/Documents/R/humidity.csv")


trans=function(temp,RH,length,width,height,exp_moi,l,ww){ #現在溫度，現在濕度，長、寬、高，理想濕度，公升，功率
  #資料轉換
  temp_1 = temp%/%5  # %/% 整除
  RH_1 = RH%/%5
  gm3<-data[temp_1,RH_1]
  
  #理想濕度需下降多少水
  temperature=temp%/%5
  exp_moi=exp_moi%/%5
  gm3_2<-data[temperature,exp_moi]
  exp_gm3=(gm3-gm3_2)*round(length/100,2)*round(width/100,2)*round(height/100,2)
  
  #算出需花費幾度電才能將水吸光
  machine_du=(exp_gm3/1000)/l 
  
  #除濕機所花小時
  machine_hour = machine_du*(1000/ww)
  
  print(exp_gm3)
  print(machine_du)
  print(machine_hour)
}
trans(25,70,500,400,208,55,2.68,200)



