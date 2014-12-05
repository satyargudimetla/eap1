getPlot1<- function(pathToFile){
  x <- read.table(paste(pathToFile,"\\household_power_consumption.txt" , sep = ""), header = TRUE, sep = ";", skip=66636, nrows=2880)
  names(x) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  png(file= "plot1.png")
  hist(x$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowats)")
  dev.off()
  rm(x) 
}