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
