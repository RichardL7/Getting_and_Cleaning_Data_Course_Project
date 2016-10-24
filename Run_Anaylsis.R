1. Downloading and unzippling data set
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

2. Merge the training and test sets to one set data

## Reading trainings tables:
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

## Merge all data to one set:
mrg_train <- cbind(x_train, y_train, subject_train)
mrg_test <- cbind(x_test, y_test, subject_test)
setAllInOne <- rbind(mrg_train, mrg_test)

3. Extracts only the measurements on the mean and standard deviation for each measurement
colNames <- colNames(setAllInOne)
  
## Create vector for define Id, mean and standard deviation
MeanStd <- (grepl("activityId",colNames)
            grepl("subjectId",colNames)
            grepl("mean..",colNames)
            grepl("std..",colNames)
            )
setForMeanStd <- setAllInONe[ ,MeanStd == TRUE]

4. Appropriately label the data set with descriptive varaiable  
SetWithActivityNames <- merge(setFormeanStd, activityLabels,
                              by = "activityId",
                              all.x=TRUE)

5. Create second, independent tidy data set with average of each variable for each activity and each subject
secTidyData <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
secTidyData <- secTidyData[order(secTidyData$subjectId, secTidyData$activityId),]
write.table(secTidyData,"secTidyData.txt", row.name=FALSE)
