## CodeBook for Human Activity Recognition Using Smartphones Dataset

The original "Human Activity Recognition Using Smartphones Dataset" was used as a base for transformations.

The original dataset description:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activites:

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

Wearing a smartphone Samsung Galaxy S II on the waist. Using its embedded accelerometer and gyroscope.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) - both using pass Butterworth filter. 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccgMag, tGravityAccMag, tBodyAccJerMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals Producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y, and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Description of abbreviations of measurements
* 1. Leading t or f is based on time or frequency measurements.
* 2. Body = related to body movement
* 3. Gravity = acceleration of gravity
* 4. Acc = accelerometer measurement
* 5. Gyro = gyroscopic measurement
* 6. Jerk = sudden movement acceleration
* 7. Mag = magnitude of movement
* 8. Mean and SD are calculated for each subject for each activity for each mean and SD measurement

The units given are g's for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.



