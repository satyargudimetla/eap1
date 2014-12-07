getPlot4<- function(pathToFile){
  x <- read.table(paste(pathToFile,"\\household_power_consumption.txt" , sep = ""), header = TRUE, sep = ";", skip=66636, nrows=2880)
  names(x) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  datetime <- strptime( apply(x[,c("Date", "Time")], 1 ,paste, collapse=""), "%d/%m/%Y %H:%M:%S")
  x <- cbind(x,datetime)
  
  png(file= "plot4.png")
  par(mfrow = c(2,2))
  
  plot(x$datetime ,x$Global_active_power, col="black", main="Global Active Power", type="l", ylab="Global Active power(kilowatts)", xlab="", axes=FALSE, frame=TRUE)
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(0,2,4,6), c("0","2","4","6"))
  
  with(x, plot(x$datetime ,x$Voltage,  type="l", ylab="Voltage", xlab="datetime", axes=FALSE, frame=TRUE))
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(234,236,242,246), c("234","236","242","246"))
  
  with(x, plot(x$datetime , x$Sub_metering_1, type="n",  ylab="Energy Sub Metering", xlab="", axes=FALSE, frame=TRUE))
  with(x , points(x$Sub_metering_1, col="black", type="l"))
  with(x , points(x$Sub_metering_2, col="red", type="l"))
  with(x , points(x$Sub_metering_3, col="blue", type="l"))
  legend("topright", pch="-", col=c( "black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(0,10,20,30), c("0","10","20","30"))
  
  plot(x$datetime ,x$Global_reactive_power, col="black", main="Global Active Power", type="l", ylab="Global Active power(kilowatts)", xlab="datetime", axes=FALSE, frame=TRUE)
  axis(1, c(0,1500, 2900), c("thu", "fri", "sat"))
  axis(2, c(0.1,0.2,0.3,0.4,0.5), c("0.1","0.2","0.3","0.4","0.5"))
  
  rm(x) 
  dev.off()
}
