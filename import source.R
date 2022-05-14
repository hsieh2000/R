rm(list = ls())
setwd('/Users/jeremyhsieh/Documents/R')
dir()
source('電費.R')
Elec(907,2)

source('一百萬.R')
million(57000,10000,"2000-12-22")

source('圖.R')
sche("2021-09-01","2021-10-04","2021-11-20","2021-12-14","2021-09-30","2021-10-28","2021-12-31","2021-12-31","1 reading","2 listening ","3 speaking ","4 writting ")