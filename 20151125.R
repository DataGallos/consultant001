# if it shows dependncy errors install the following libraries
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
boxplot(time~stage, data = allscores, main = "<TITLE>", xlab = "Stages", ylab = "Participants", col = c("green", "white", "red"))

