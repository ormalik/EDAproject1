## plot2.png code

concat = paste(power_data$Date,power_data$Time,sep=' ')
totime = strptime(concat,"%Y-%m-%d %H:%M:%S")
plot(totime, power_data$Global_active_power, xaxt=NULL, xlab = "", ylab = "Global Active Power (kilowatts)", type="n")
lines(totime, power_data$Global_active_power, type="S")