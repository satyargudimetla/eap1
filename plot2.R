getPlot2<- function(pathToFile){
  x <- read.table(paste(pathToFile,"\\household_power_consumption.txt" , sep = ""), header = TRUE, sep = ";", skip=66636, nrows=2880)
  names(x) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  datetime <- strptime( apply(x[,c("Date", "Time")], 1 ,paste, collapse=""), "%d/%m/%Y %H:%M:%S")
  x <- cbind(x,datetime)
  png(file= "plot2.png")
  plot(x$datetime ,x$Global_reactive_power, col="black", main="Global Active Power", type="l", ylab="Global Active power(kilowatts)", xlab="", axes=FALSE, frame=TRUE)
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(0,2,4,6), c("0","2","4","6"))
  dev.off()
  rm(x) 
}
