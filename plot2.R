#Exploratory Data Analysis
#Project 1 - Plot #2
#Gustavo Cavalcanti
#5/8/2015
###################################################################
# This script builds plot2.png
###################################################################

Plot2 <- function(data, fileoutput=1)
{
    if (fileoutput==1)
         png(filename='plot2.png', width=480, height=480);

    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Global_active_power, 
         type="l", 
         col="black", 
         xlab="", 
         ylab="Global Active Power (kilowatts)", 
         main="")
    
    if (fileoutput==1)
        dev.off();
}



