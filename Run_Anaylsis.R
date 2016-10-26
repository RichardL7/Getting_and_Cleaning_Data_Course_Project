## Downloading and unzippling data set
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Reading train and test tables:
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Reading feature vector:
features <- read.table("./data/UCI HAR Dataset/features.txt")

## Reading activity labels:
activityLablels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Column names:
colNames(x_train) <- features[2,2]
colNames(y_train) <- "activityId"
colNames(subject_train) <- "subjectId"

colNames(x_test) <- features[,2]
colNames(y_test) <- "activityId"
colNames(subject_test) <- "subjectId"

colNames(activityLabels) <- c("activityId","activityType")

## 1. Merge the train and test data set to one set:
mrg_train <- cbind(x_train, y_train, subject_train)
mrg_test <- cbind(x_test, y_test, subject_test)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Reading train and test tables:
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Reading feature vector:
features <- read.table("./data/UCI HAR Dataset/features.txt")

## Reading activity labels:
activityLablels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Column names:
colNames(x_train) <- features[2,2]
colNames(y_train) <- "activityId"
colNames(subject_train) <- "subjectId"

colNames(x_test) <- features[,2]
colNames(y_test) <- "activityId"
colNames(subject_test) <- "subjectId"

colNames(activityLabels) <- c("activityId","activityType")

mrg_train <- cbind(x_train, y_train, subject_train)
mrg_test <- cbind(x_test, y_test, subject_test)
All_Data <- rbind(mrg_train, mrg_test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement
col_Names <- colNames(All_Data)

## 3. Uses descriptive activity names to name the activities in the data set  
MeanStd <- (grepl("activityId",col_Names) |
            grepl("subjectId",col_Names) |
            grepl("mean..",col_Names) |
            grepl("std..",col_Names)
            )
setMeanStd <- All_Data[ ,MeanStd == TRUE]

## 4. Appropriately label the data set with descriptive varaiable  
activity_Names <- merge(setMeanStd, activityLabels,
                              by = "activityId",
                              all.x=TRUE)
All_Data <- rbind(mrg_train, mrg_test)

## 5. From the data set in step 4, independent tidy data set with average of each variable for each activity and each subject
tidy_Data <- aggregate(. ~activityType + subjectId + activityId, activity_Names, mean)
tidy_Data <- tidy_Data[order(tidy_Data$activityType, tidy_Data$subjectId, tidy_Data$activityId),]
write.table(tidy_Data,"tidy_Data.txt", row.name=FALSE)
