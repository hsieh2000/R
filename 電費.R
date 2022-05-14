
Elec<-function(degree,month){
  PerMonth_Degree<-degree/month
  firstfee=120*1.63
  secondfee=210*2.38
  thirdfee=170*3.52
  fourthfee=200*4.80
  fifthfee=300*5.66
  if (PerMonth_Degree<=120){
    fee<-(PerMonth_Degree*1.63)*month
  }
  else if(120<PerMonth_Degree & PerMonth_Degree<=330){
    fee<-(firstfee+2.38*(PerMonth_Degree-120))*month
  }
  else if(330<PerMonth_Degree & PerMonth_Degree<=500){
    fee<-(firstfee+secondfee+3.52*(PerMonth_Degree-330))*month
  }
  else if(500<PerMonth_Degree & PerMonth_Degree<=700){
    fee<-(firstfee+secondfee+thirdfee+4.80*(PerMonth_Degree-500))*month
  }
  else if(700<PerMonth_Degree & PerMonth_Degree<=1000){
    fee<-(firstfee+secondfee+thirdfee+fourthfee+5.66*(PerMonth_Degree-700))*month
  }
  else if(1000<PerMonth_Degree){
    fee<-(firstfee+secondfee+thirdfee+fourthfee+fifthfee+6.41*(PerMonth_Degree-1000))*month
  }
  
  fee.str<-paste('Total is ',sep='',fee,' NTD ',', each month fee is ',fee/month,' NTD.')
  return(fee.str)
}
Elec(1100,2)

