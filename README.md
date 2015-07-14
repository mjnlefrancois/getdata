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
1. The columns in the training and test data frames were renamed in order to use the ```rbind()``` function smoothly
  + The variables in ```Xtrain``` & ```Xtest``` were named by feature (in the ```features``` object)
  + The activity data (```ytrain``` & ```ytest```) was named "Activity"
  + The subject data (```subtrain``` & ```subtest```) was named "Subject"
2. The training and test data were merged separately in the order: Subject, Activity, Features
3. A new dataset (```combined```) was then created by merging the training (```train```) and test (```test```) data
4. To use descriptive activity names to name the activities in the data set, the Activities column in ```combined``` was converted to a factor using the ```factor()``` function, specifying ```labels = activities``` to assign the relevant activity names (as character strings) to the appropriate factor in that column

### Step 3: Select appropriate variables
1. Running the ```select()``` function in ```dplyr``` yields an error: there are duplicate column names in ```combined```. Hence, these were identified using the ```duplicated()``` command for the column names of ```combined```: ```names(combined)```. We see that none of these columns contain the means or standard deviations of the measurements.
2. Hence, these were removed by subsetting the ```combined``` data frame using the ```[``` and ```]``` operators for columns which did not contain duplicated names. We obtain a data frame that may then be manipulated using ```select()```.
3. Relevant columns are then selected from ```combined```. These include:
  * Subject
  * Activity
  * All columns that contain the word "mean" to represent measurement means - this is case sensitive to ensure that other irrelevant variables are not included
  * All columns that contain the word "std" to represent measurement standard deviations
  * Excluding columns that contain the word "Freq" to avoid selecting columns containing the ```meanFreq()``` of measurements
