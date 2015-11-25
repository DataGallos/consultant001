#Solving R error "tar: Failed to set default locale" in Mac OS X
#write the following in terminal
#defaults write org.R-project.R force.LANG en_US.UTF-8
#and restart R

# if it shows dependncy errors install the following libraries
#install.packages("bitops")
#install.packages("RCurl")
#install.packages("lubridate")

# Use libraries
library("lubridate")
library("RCurl")

# Read experiment data from google docs
spreadsheet.data <-getURL("https://docs.google.com/spreadsheets/d/1trZhg4iJmVPRrZR3IMv1xTUZx-8vMhXu1ihYJITWEKs/pub?gid=273369584&single=true&output=csv")

#parse data as CSV
allscores <- read.csv(textConnection(spreadsheet.data),
	              colClasses=c("factor","factor","character"))
		      
#Change time column to integers with the number of seconds
allscores$time=period_to_seconds(ms(allscores$time))

# Plot a comparative box plot, indicating the variables to compare, the dataset and extra information like a title, x-y titles and colors.
boxplot(time~stage, data = allscores, main = "<TITLE>", xlab = "Stages", ylab = "Participants", col =terrain.colors(3))# or col = c("green", "white", "red"))

#for legend 
#legend("topright", inset=.01, title="Stage Min",
#       c("6","17","8"), fill=terrain.colors(3), horiz=TRUE)

#points to automate, points(x,y,color,pch=symbol)   

points(1,22,col="red",pch=0:4)
points(2,19,col="gray",pch=5:9)
points(2,40,col="pink",pch=10:14)
points(2,15,col="pink",pch=20:25)



