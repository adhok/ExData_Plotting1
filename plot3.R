mydata<-read.table('C:/Users/Adhokshaja/Desktop/data/household_power_consumption.txt',header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset<-mydata[mydata$Date %in% c('1/2/2007','2/2/2007'),]
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subm1<-as.numeric(subset$Sub_metering_1)
subm2<-as.numeric(subset$Sub_metering_2)
subm3<-as.numeric(subset$Sub_metering_3)
png("plot3.png",width=480,height=480)
plot(datetime,subm1,ylab='Energy Submetering',xlab='',type='l')
lines(datetime,subm2,col='red')
lines(datetime,subm3,col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c('black','red','blue'))
dev.off()#save file
