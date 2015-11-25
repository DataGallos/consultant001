# Load into R the dataset. The structure of the file used in this sample is at the end of this script.
setwd("/path/to/file/")
allscores <- read.table("scores.txt", header = TRUE)
# Plot a comparative box plot, indicating the variables to compare, the dataset and extra information like a title, x-y titles and colors.
boxplot(time~stage, data = allscores, main = "<TITLE>", xlab = "Stages", ylab = "Participants", col = c("green", "white", "red"))

# File structure used in this sample:
# "scores.txt":
# stage time
# 1 6
# 1 10
# 1 8
# 1 9
# 1 8
# 1 8
# 1 14
# 1 18
# 1 10
# 1 9
# 1 14
# 1 16
# 1 11
# 1 14
# 1 18
# 2 18
# 2 24
# 2 26
# 2 30
# 2 29
# 2 31
# 2 31
# 2 49
# 2 43
# 2 17
# 2 37
# 2 34
# 2 42
# 2 37
# 2 55
# 3 8
# 3 11
# 3 10
# 3 11
# 3 9
# 3 13
# 3 11
# 3 15
# 3 8
# 3 10
# 3 14
# 3 10
# 3 10
# 3 13
# 3 13