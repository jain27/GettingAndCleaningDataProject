---
title: "CodeBook"
author: "jain27"
date: "October 25, 2015"
output: html_document
---

##Columns Description
* Subject - An identifier of the subject who carried out the experiment - 30 total

* Activity - activity which was monitored on the subjects. Labels from Activity are:
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING

* Other Columns - The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.Suffix Meanings for columns
    + mean - value if the average of the measurement mean values
    + std - value is the average of the measurement standard deviation values
    + mean_X - value if the average of the measurement mean values for X axis
    + mean_Y - value if the average of the measurement mean values for Y axis
    + mean_Z - value if the average of the measurement mean values for Z axis
    + std_X - value is the average of the measurement standard deviation values for X axis
    + std_Y - value is the average of the measurement standard deviation values for Y axis
    + std_Z - value is the average of the measurement standard deviation values for Z axis


##Data Transformation Process
1. Merge the training and the test sets to create one data set.
2. Set the column names with descriptive variable names from the file features.txt  data set
3. Extract only the measurements on the mean and standard deviation for each measurement.
4. Create a tidy data set with the average of each variable for each activity and each subject using the concept of Reshaping the data
5. Use descriptive activity names to name the activities in the data set using file activity_labels.txt
6. Write the final file to the output file