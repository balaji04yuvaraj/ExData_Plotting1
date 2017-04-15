bf <- read.delim2("F:\\household_power_consumption\\household_power_consumption.txt", sep=";",header=TRUE)
nbf <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(nbf$Date, nbf$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(nbf$Global_active_power)
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
#PIC1
plot(datetime, globalActivePower, type="l", xlab="", ylab="global Active Power")
#PIC2
plot(datetime,nbf$Voltage, type="l", xlab="datetime", ylab="Voltage")
#PIC3
plot(datetime, subm_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetime, subm_2, type="l",col="red")
lines(datetime, subm_3, type="l",col="blue")
legend("topright", c("sub_metering_1","sub_metering_2","submetering_3"),col = c("black","red","blue"),lty = 1,lwd = 2.5)
#PIC4
plot(datetime,nbf$Global_reactive_power, type="l", xlab="datetime", ylab="Voltage")
dev.off()