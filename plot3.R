getPlot3<- function(pathToFile){
  x <- read.table(paste(pathToFile,"\\household_power_consumption.txt" , sep = ""), header = TRUE, sep = ";", skip=66636, nrows=2880)
  names(x) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  png(file= "plot3.png")
  with(x, plot(x$Sub_metering_1, type="n",  ylab="Energy Sub Metering", xlab="", axes=FALSE, frame=TRUE))
  with(x , points(x$Sub_metering_1, col="black", type="l"))
  with(x , points(x$Sub_metering_2, col="red", type="l"))
  with(x , points(x$Sub_metering_3, col="blue", type="l"))
  legend("topright", pch="-", col=c( "black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(0,10,20,30), c("0","10","20","30"))
  dev.off()

}
