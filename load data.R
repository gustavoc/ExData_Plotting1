#Exploratory Data Analysis
#Project 1
#Gustavo Cavalcanti
#5/8/2015
###################################################################

setAs("character","dmyDate", function(from) as.Date(from, format="%d/%m/%Y") )

alldata <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', colClasses = c("dmyDate","character", "character","character","character","character","character","character","character"))

#converting applicable character columns to numeric
alldata [,c(3:9)] <- sapply(alldata[, c(3:9)], as.numeric)

filtereddata <- alldata[which(alldata$Date>='2007-02-01' & alldata$Date<='2007-02-02'),]
