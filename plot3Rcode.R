## plot3.png code

par(mar = c(7, 6, 5, 4))
plot(totime, power_data$Sub_metering_1, xaxt=NULL, xlab = "", ylab = "Energy sub metering", type="n")
lines(totime, power_data$Sub_metering_1, col = "black", type = "S")
lines(totime, power_data$Sub_metering_2, col = "red", type = "S")
lines(totime, power_data$Sub_metering_3, col = "blue", type = "S")
legend("topright", lty = c(1, 1), lwd = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
