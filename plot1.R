#Exploratory Data Analysis
#Project 1 - Plot #1
#Gustavo Cavalcanti
#5/8/2015
###################################################################
# This script builds plot1.png
# Bar chart (Histogram). Dim: Global Active Power, Expr: Frequency
###################################################################

    Plot1 <- function(data, fileoutput=1)
    {
        if (fileoutput==1)
            png(filename='plot1.png', width=480, height=480);
        
        hist(data$Global_active_power, 
             freq=TRUE, 
             col=2, 
             main='Global Active Power', 
             xlab='Global Active Power (kilowatts)');
        
        if (fileoutput==1)
            dev.off();
        
    }




