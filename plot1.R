mydata<-read.table('C:/Users/Adhokshaja/Desktop/data/household_power_consumption.txt',header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata<-mydata[mydata$Date %in% c('1/2/2007','2/2/2007'),]
png('plot1.png',width=480,height=480)
hist(as.numeric(subdata$Global_active_power),col='red',main='Global Active Power',xlab='Global Active Power(Kilowatts)')
dev.off()#save file
