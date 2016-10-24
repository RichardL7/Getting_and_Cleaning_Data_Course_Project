1. Downloading and unzippling data set
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

### Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

2. Merge the training and test sets to one set data

### Reading trainings tables:
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

### Reading feature vector:
features <- read.table("./data/UCI HAR Dataset/features.txt")

### Reading activity labels:
activityLablels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
