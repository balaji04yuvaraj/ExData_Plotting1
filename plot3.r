bf <- read.delim2("F:\\household_power_consumption\\household_power_consumption.txt", sep=";",header=TRUE)
nbf <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(nbf$Date, nbf$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(nbf$Global_active_power)
subm_1 <-  as.numeric(nbf$Sub_metering_1)
subm_2 <-  as.numeric(nbf$Sub_metering_2)
subm_3 <-  as.numeric(nbf$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subm_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetime, subm_2, type="l",col="red")
lines(datetime, subm_3, type="l",col="blue")
legend("topright", c("sub_metering_1","sub_metering_2","submetering_3"),col = c("black","red","blue"),lty = 1,lwd = 2.5)
dev.off()

#-------------------------------------------------------------------------------------------------------------#












