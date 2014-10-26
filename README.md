## Getting and Cleaning Data Course Project

### Introduction
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data".

### About the raw data
The raw data "Human Activity Recognition Using Smartphones Data Set" was originally made available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

### About the script
The script [run_analysis.R](https://github.com/fgtech/coursera-getdata/blob/master/run_analysis.R) does some cleaning and transformation on the raw data :
  1. Merges the training and the test sets to create one data set ;
  2. Extracts only the measurements on the mean and standard deviation for each measurement ; 
  3. Uses descriptive activity names to name the activities in the data set ;
  4. Appropriately labels the data set with descriptive variable names ;
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject ;
  6. Save the resulting dataset to [tidy_set_with_averages.txt](https://github.com/fgtech/coursera-getdata/blob/master/tidy_set_with_averages.txt).

#### How to run the script
  1. Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ;
  2. Unzip the archive to a folder ;
  3. Copy the script [run_analysis.R](https://github.com/fgtech/coursera-getdata/blob/master/run_analysis.R) into this folder ;
  4. Set your working directory in R to the script's folder ;
  5. Load the script and run it.

### About the tidy dataset
The tidy dataset [tidy_set_with_averages.txt](https://github.com/fgtech/coursera-getdata/blob/master/tidy_set_with_averages.txt) is derived from the "Human Activity Recognition Using Smartphones Data Set". The resulting dataset contains only mean and standard deviation calculations aggregated by subject and activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The description of the others columns are described in the CodeBook.
