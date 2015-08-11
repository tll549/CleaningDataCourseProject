# Getting and Cleaning Data - Course Project

# Author : T.T
# Date   : 2015/08/11

## setwd("/Users/T/Dropbox/Coursera/Data Science S/3 Getting and Cleaning Data/assignment")
## rm(list = ls())

# download and unzip ====
## download the zip file if it doesn't exist in the working directory
if (!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "getdata_projectfiles_UCI HAR Dataset.zip", method = "curl")
}
## unzip the zip file if the folder doesn't exist in the working directory
if(!file.exists("UCI HAR Dataset")){
    unzip("getdata_projectfiles_UCI HAR Dataset.zip")
}

# read data ====
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
testLabel <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")

trainData <- read.table("UCI HAR Dataset/train/x_train.txt")
trainLabel <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

features <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", colClasses = "character")
## don't use read.csv!!!

# tidy data ====
## name data colnames
library(dplyr)
colnames(testData) <- features[, 2]
colnames(trainData) <- features[, 2]

## name columns of test files, cbind files
testSubject <- rename(testSubject, subjectID = V1)
testLabel <- rename(testLabel, activity = V1)
test <- cbind(testSubject, testLabel, testData)

## name columns of train files, cbind files
trainSubject <- rename(trainSubject, subjectID = V1)
trainLabel <- rename(trainLabel, activity = V1)
train <- cbind(trainSubject, trainLabel, trainData)

# 1. Merges the training and the test sets to create one data set. ====
testAndTrain <- rbind(test, train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. ====
## "mean()", "Mean()", "std()" and "meanFreq()" are all included,
## not sure about "meanFreq()" should be included or not.
meanAndSdCols <- grep("mean|std|Mean", colnames(testAndTrain))
meanAndSd <- testAndTrain[, c(1, 2, meanAndSdCols)]

# 3. Uses descriptive activity names to name the activities in the data set ====
meanAndSd$activity <- activityLabels[, 2][meanAndSd$activity]
## this is a confusing way to rename column content according to numeric 
## identifier, from course discussion forums:
## https://class.coursera.org/getdata-031/forum/thread?thread_id=157

# 4. Appropriately labels the data set with descriptive variable names. ====
# already done, no need to rename other variables

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ====
finalTidy <- group_by(meanAndSd, subjectID, activity) %>% summarise_each(funs(mean))
## summarise_each is a function in dplyr package that can apply 
## summarise to multiple columns

# output tidy file ====
write.table(finalTidy, "finalTidy.txt", row.names = F)
