##
library(reshape2)

#Output File
tidyFile <- "tidyFile.txt"

# Read all the files
features <- read.table("features.txt")
activityLabels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")
xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

# Set the column names with descriptive variable names from the file features.txt  data set
finalColNames <- c("Subject", "Activity", as.character(features[, 2]))

# Merges the training and the test sets to create one data set
xMerge <- rbind(xTrain, xTest)
yMerge <- rbind(yTrain, yTest)
subjectMerge <- rbind(subjectTrain, subjectTest)
MergedData <- cbind(subjectMerge, yMerge, xMerge)

#Assign column names to the new merged data
colnames(MergedData) <- finalColNames

#Extract only the measurements on the mean and standard deviation for each measurement
onlyMeanStdCols <- c(grep("-mean()", finalColNames, fixed = TRUE), grep("-std()", finalColNames, fixed = TRUE))
onlyMeanStdCols <- sort(onlyMeanStdCols)
FinalDataFrame <- MergedData[ , c(1,2,onlyMeanStdCols)]

#Create a tidy data set with the average of each variable for each activity and each subject
#Reshape the data
MeltedData <- melt(FinalDataFrame, id = c("Subject", "Activity"))
castedData <- dcast(MeltedData, Subject + Activity ~ variable, mean)

#Use descriptive activity names to name the activities in the data set using file activity_labels.txt
for (i in 1:nrow(castedData)) { 
  label <- activityLabels[(castedData[i,"Activity"] == activityLabels[1]), 2]
  castedData[i, "Activity"] <- label 
}

#Write the final file to the output file
write.table(castedData, tidyFile, sep = " ", quote = FALSE, row.names = FALSE)
