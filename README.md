## Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 

## Introduction of Assignment

One of the most exciting areas inall of data science right now is wearable computing.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recongnition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Assignment

The objective is to prepare tidy data that can be used for analysis.  The project contains the following files:
* README.md: description of the repo with the scripts
* CodeBook.md: description of the variables, the data, and any transformations to clean up the data
* Run_analysis.R: R scripts performing the anaylsis on the data set
* Tidy Data: Output of the tidy data set from run analysis scripts 

In run the analysis called "run_analysis.R" for "Human Activity Recogition Using Smartphones", the R script file does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

