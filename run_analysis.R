## MOOC / Coursera
## Getting and Cleaning Data
## Assignment 
## 2014-10-25

# setwd("~/Documents/MOOC/Coursera/Get_Data/Assignment")


###############################################################################
## 1. Merges the training and the test sets to create one data set

# read files
training_set_x <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
training_set_y <- read.csv("./UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
training_set_s <- read.csv("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
testing_set_x <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
testing_set_y <- read.csv("./UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
testing_set_s <- read.csv("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
features <- read.csv("./UCI HAR Dataset/features.txt", sep="", header=FALSE)

# merge testing and training sets
training_set <- cbind(training_set_s, training_set_y, training_set_x)
testing_set <- cbind(testing_set_s, testing_set_y, testing_set_x)
merged_set <- rbind(training_set, testing_set)

# set appropriate labels
colnames(merged_set) <- c("subject", "activity_id", as.character(features[,2]))


###############################################################################
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# get list of features columns (+ subject and activity)
merged_set_cols <- grepl("(subject)|(activity_id)|(.-mean)|(.-std)", colnames(merged_set))
# get data
merged_set2 <- merged_set[merged_set_cols]


###############################################################################
## 3. Uses descriptive activity names to name the activities in the data set

# set activity labels
colnames(activity_labels) <- c("activity_id", "activity")
# add column activity
merged_set2 <- merge(activity_labels, merged_set2, by="activity_id")
# remove column activity_id
merged_set2 <- subset(merged_set2, select=-activity_id)


###############################################################################
## 4. Appropriately labels the data set with descriptive variable names

# get labels
merged_set_cols <- colnames(merged_set2)
# clean labels
merged_set_cols <- gsub('-mean', 'Mean', merged_set_cols)
merged_set_cols <- gsub('-std', 'Std', merged_set_cols)
merged_set_cols <- gsub('[-()]', '', merged_set_cols)
# set labels
colnames(merged_set2) <- merged_set_cols


###############################################################################
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# get calculations
merged_set3 <- aggregate(merged_set2, by=list(merged_set2$subject, merged_set2$activity), mean)
# remove old columns
merged_set3 <- subset(merged_set3, select=-c(subject,activity))
# rename new columns
colnames(merged_set3)[colnames(merged_set3) == "Group.1"] <- "subject"
colnames(merged_set3)[colnames(merged_set3) == "Group.2"] <- "activity"

# save results as file
# write.table(merged_set3, file="tidy_set_with_averages.txt", sep="\t", row.names=FALSE)


