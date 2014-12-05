## Instrunctions to create the plots

Please download the file to a local directory from the following website . 

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

- Download the R files plot1.R, plot2.R, plot3.R and plot4.R to the same directory

- Open R Studio

- set working directory as above directory

- Please make sure the downloaded file name as  "household_power_consumption.txt" only. Any changes the code will not wrok.

 - Please type as following

> source("plot1.R")

> getPlot1(pathToFile) # Please exclude the file name 

For Ex if your working dir is "c:\\Rex" in which the above files are loaded please type as following

> getPlot1("c:\\Rex") 
 
Continue as following

> source("plot2.R")

> getPlot2("c:\\Rex")

> source("plot3.R")

> getPlot3("c:\\Rex")

> source("plot4.R")

> getPlot4("c:\\Rex")

Now, in working directory you should be able to see all 4 png files, plot1.png, plot2.png, plot3.png and plot4.png

Thank you
