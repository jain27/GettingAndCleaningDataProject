---
title: "Readme File"
author: "jain27"
date: "October 25, 2015"
output: html_document
---


##Data Transformation Process
1. Merge the training and the test sets to create one data set.
2. Set the column names with descriptive variable names from the file features.txt  data set
3. Extract only the measurements on the mean and standard deviation for each measurement.
4. Create a tidy data set with the average of each variable for each activity and each subject using the concept of Reshaping the data
5. Use descriptive activity names to name the activities in the data set using file activity_labels.txt
6. Write the final file to the output file

###Packages Needed
* reshape package must be installed

##Cleaned Data
The resulting clean dataset is saved in file "./tidyFile.txt" . It contains one row for each subject/activity pair and columns for subject, activity, and each feature that was a mean or standard deviation from the original dataset.
