#Exploratory Data Analysis
#Project 1 - Plot #3
#Gustavo Cavalcanti
#5/8/2015
###################################################################
# This script builds plot2.png
###################################################################

Plot3 <- function(data, fileoutput=1)
{
    if (fileoutput==1)
         png(filename='plot3.png', width=480, height=480);

    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Sub_metering_1, 
         type="l", 
         col="black", 
         xlab="", 
         ylab="Energy Sub-Metering", 
         main="")
    lines(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), data$Sub_metering_2, col="red")
    lines(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), data$Sub_metering_3, col="blue")
    legend("topright", 
           col = c("black", "red", "blue"), 
           lwd=1, lty=1, 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    if (fileoutput==1)
        dev.off();
}



