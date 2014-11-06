## R code for reading, cleaning, and subsetting power consumption data

install.packages("data.table")
library(data.table)
data <- fread("household_power_consumption.txt")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data_subset <- data[data$Date=="2007-02-01" | data$Date=="2007-02-02"]
power_data <- data.frame(data_subset)
str(power_data)
for(i in c(3:9)) {power_data[,i] <- as.numeric(as.character(power_data[,i]))}
power_data$Date_Time <- paste(power_data$Date, power_data$Time)
power_data$Date_Time <- strptime(power_data$Date_Time, format="%Y-%m-%d %H:%M:%S")
> class(power_data$Date_Time)
write.csv(power_data, file = "power_data_project 1.csv")
power_data <- read.csv("power_data_project 1.csv")

## plot1.png code, saved as png using R studio (Export, Image function)

hist(power_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

## plot2.png code

concat = paste(power_data$Date,power_data$Time,sep=' ')
totime = strptime(concat,"%Y-%m-%d %H:%M:%S")
plot(totime, power_data$Global_active_power, xaxt=NULL, xlab = "", ylab = "Global Active Power (kilowatts)", type="n")
lines(totime, power_data$Global_active_power, type="S")


## plot3.png code

par(mar = c(7, 6, 5, 4))
plot(totime, power_data$Sub_metering_1, xaxt=NULL, xlab = "", ylab = "Energy sub metering", type="n")
lines(totime, power_data$Sub_metering_1, col = "black", type = "S")
lines(totime, power_data$Sub_metering_2, col = "red", type = "S")
lines(totime, power_data$Sub_metering_3, col = "blue", type = "S")
legend("topright", lty = c(1, 1), lwd = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

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




