## plot4.png code

par(mfrow = c(2, 2), mar = c(14, 6, 2, 2), cex=.5)

plot(totime, power_data$Global_active_power, xaxt=NULL, xlab = "", ylab = "Global Active Power", type="n")
lines(totime, power_data$Global_active_power, type="S")

plot(totime, power_data$Voltage, xaxt=NULL, xlab = "datetime", ylab = "Voltage", type="n")
lines(totime, power_data$Voltage, type="S")

plot(totime, power_data$Sub_metering_1, xaxt=NULL, xlab = "", ylab = "Energy sub metering", type="n")lines(totime, power_data$Sub_metering_1, col = "black", type = "S")
lines(totime, power_data$Sub_metering_2, col = "red", type = "S")
lines(totime, power_data$Sub_metering_3, col = "blue", type = "S")
legend("topright", bty = "n", lty = c(1, 1), lwd = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(totime, power_data$Global_reactive_power, xaxt=NULL, xlab = "datetime", ylab = "Global_reactive_power", type="n")
lines(totime, power_data$Global_reactive_power, type="S")