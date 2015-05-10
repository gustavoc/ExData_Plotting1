#Exploratory Data Analysis
#Project 1 - Plot #4
#Gustavo Cavalcanti
#5/8/2015
###################################################################
# This script builds plot4.png
###################################################################

Plot4 <- function(data, fileoutput=1)
{
    if (fileoutput==1)
         png(filename='plot4.png', width=480, height=480);

    par(mfcol=c(2,2))
    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Global_active_power, 
         type='l',
         col='black', 
         xlab='', 
         ylab='Global Active Power', 
         main='')

    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Sub_metering_1, 
         type='l',
         col='black', 
         xlab='', 
         ylab='Energy sub metering', 
         main='')
        lines(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), data$Sub_metering_2, col='red')
        lines(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), data$Sub_metering_3, col='blue')
        legend(border = 'white', 
               fill = 'white', 
               'topright', 
               bty='n',
               lwd=1, 
               lty=1, 
               col = c('black', 'red', 'blue'), 
               legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
    
    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Voltage, 
         type='l',
         col='black', 
         xlab='datetime', 
         ylab='Voltage', 
         main='')
    
    plot(as.POSIXct(paste(filtereddata$Date,filtereddata$Time)), 
         data$Global_reactive_power, 
         type='l',
         col='black', 
         xlab='datetime', 
         ylab='Global_reactive_power', 
         main='')
    
    
    if (fileoutput==1)
        dev.off();
}



