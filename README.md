# ReadMe file for run_analysis.R

## Introduction

### Required packages
Only the [```dplyr```](http://cran.r-project.org/web/packages/dplyr/index.html) package is required for this script.

### Overview
This script performs the following functions in the order listed:
  
1. Import relevant data 
2. Combine data  
3. Select appropriate variables  
4. Create final dataset  

## Detailed Explanation

### Step 1: Import relevant data
* The ```write.table()``` function was used to import all files, which were ```.txt``` files
* The following data was imported from the corresponding files shown in the table below:

       Data        |       File         | Object(s)
------------------ | ------------------ | ---------
Variable names     | ```features.txt``` | ```features```
Activity labels    | ```activity_labels.txt``` | ```activities```
Training data      | ```X_train.txt```, ```y_train.txt``` & ```subject_train.txt``` | ```Xtrain```, ```ytrain``` & ```subtrain```
Test data          | ```X_test.txt```, ```y_test.txt``` & ```subject_test.txt``` | ```Xtest```, ```ytest``` & ```subtest```

### Step 2: Combine Data
* The columns in the training and test data frames were renamed in order to use the ```rbind()``` function smoothly
  + The variables in ```Xtrain``` & ```Xtest``` were named by feature (in the ```features``` object)
  + The activity data (```ytrain``` & ```ytest```) was named "Activity"
  + The subject data (```subtrain``` & ```subtest```) was named "Subject"
* The training and test data were merged separately in the order: Subject, Activity, Features
* A new dataset (```combined```) was then created by merging the training (```train```) and test (```test```) data
* To use descriptive activity names to name the activities in the data set, the Activities column in ```combined``` was converted to a factor using the ```factor()``` function, specifying ```labels = activities``` to assign the character strings in ```activity_labels.txt``` to the factors in that column
