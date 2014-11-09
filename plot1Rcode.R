## plot1.png code, saved as png using R studio (Export, Image function)

hist(power_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

## plot2.png code

concat = paste(power_data$Date,power_data$Time,sep=' ')
totime = strptime(concat,"%Y-%m-%d %H:%M:%S")
plot(totime, power_data$Global_active_power, xaxt=NULL, xlab = "", ylab = "Global Active Power (kilowatts)", type="n")
lines(totime, power_data$Global_active_power, type="S")