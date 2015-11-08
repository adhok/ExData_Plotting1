mydata<-read.table('C:/Users/Adhokshaja/Desktop/data/household_power_consumption.txt',header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset<-mydata[mydata$Date %in% c('1/2/2007','2/2/2007'),]
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime,as.numeric(subset$Global_active_power),type='l',xlab=' ',ylab='Global Active Power(Kilowatts)')
dev.off()#save file