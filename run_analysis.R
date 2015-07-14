# Getting and Cleaning Data - Course Project
# run_analysis.R

# This script does the following:
#   1. Import relevant data
#   2. Combine data
#   3. Select appropriate variables
#   4. Generate tidy dataset of averages

# Place this file in your working directory
# Your working directory should contain the folder "UCI HAR Dataset",
# extracted directly from the zip file downloaded from the instructions
# page of this assignment.

# Load required packages
library(dplyr)

####################################
##  STEP 1: IMPORT RELEVANT DATA  ##  
####################################

# Import features
features <- read.table("UCI HAR Dataset/features.txt")
features <- as.character(features$V2)

# Import activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities <- as.character(activities$V2)

# Read in training data
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read in testing data
Xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subtest <- read.table("test/subject_test.txt")

############################
##  STEP 2: COMBINE DATA  ##
############################

# Rename Features columns
colnames(Xtrain) <- features
colnames(Xtest) <- features

# Rename Activity columns
colnames(ytrain) <- "Activity"
colnames(ytest) <- "Activity"

# Rename Subject columns
colnames(subtrain) <- "Subject"
colnames(subtest) <- "Subject"

# Merge training data
train <- cbind(subtrain, ytrain, Xtrain)

# Merge testing data
test <- cbind(subtest, ytest, Xtest)

# Combine training and testing sets
combined <- rbind(train, test)

# Convert activities to factors
combined$Activity <- factor(combined$Activity, labels = activities)

############################################
##  STEP 3: SELECT APPROPRIATE VARIABLES  ##
############################################

# Identify names of duplicated columns
names(combined)[duplicated(names(combined))]

# Since none are essential, we may delete these columns
combined <- combined[, !duplicated(names(combined))]

# Select relevant columns
combined <- select(combined, Subject:Activity, contains("mean", ignore.case = FALSE), contains("std"), -contains("Freq"))

# Rename columns to remove "()" - purely aesthetic
colnames(combined) <- gsub("\\(|\\)", "", colnames(combined))
colnames(combined) <- gsub("BodyBody", "Body", colnames(combined))
colnames(combined) <- gsub("mean", "Mean", colnames(combined))
colnames(combined) <- gsub("std", "Std", colnames(combined))
colnames(combined) <- gsub("-", "", colnames(combined))

####################################
##  STEP 4: CREATE FINAL DATASET  ##
####################################

# Convert to tbl
combined <- tbl_df(combined)

# Create summarized dataset
sumData <- combined %>%
  group_by(Activity, Subject) %>%
  summarise_each(funs(mean))

# Export data
write.table(x = sumData, file = "averages.txt", row.name=FALSE)

