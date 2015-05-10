# The file "household_power_consumption.txt" is downloaded and working 
#  directory set. (preassumption)

library(data.table)
data<-read.csv("household_power_consumption.txt", sep=";",header=TRUE, na="?")
head(data,2)
summary(data)
dim(data)


data1<-data

head(data1,2)

data1$DateNtime <- strptime(paste(data1$Date,data1$Time), format="%d/%m/%Y %H:%M:%S") 
                                                    
data1$Date=NULL 
data1$Time=NULL 

data2 = subset(data1,as.Date(data1$DateNtime) >= "2007-02-01"& as.Date(data1$DateNtime) < "2007-02-03") 
                                    


dim(data2)
tail(data2,2)

sum(is.na(data2))


