## CodeBook

### Data source
The tidy dataset [tidy_set_with_averages.txt](https://github.com/fgtech/coursera-getdata/blob/master/tidy_set_with_averages.txt) is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. It contains only mean and standard deviation calculations aggregated by subject and activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The description of the others columns are described in the next section (description from the original sources).


#### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
- mean(): Mean 
- std(): Standard deviation


### Transformation
The script [run_analysis.R](https://github.com/fgtech/coursera-getdata/blob/master/run_analysis.R) does some cleaning and transformation on the raw data :
  1. Merges the training and the test sets to create one data set ;
  2. Extracts only the measurements on the mean and standard deviation for each measurement ; 
  3. Uses descriptive activity names to name the activities in the data set ;
  4. Appropriately labels the data set with descriptive variable names ;
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject ;
  6. Save the resulting dataset to [tidy_set_with_averages.txt](https://github.com/fgtech/coursera-getdata/blob/master/tidy_set_with_averages.txt).
