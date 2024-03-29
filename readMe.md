# ReadMe file for run_analysis.R

## Introduction

### Required Packages
Only the [```dplyr```](http://cran.r-project.org/web/packages/dplyr/index.html) package is required for this script.

### Setup
Place this file (```run_analysis.R```) and the folder "UCI HAR Dataset" into your working directory before running the script.

### Overview
This script performs the following functions in the order listed:
  
1. Import relevant data 
2. Combine data  
3. Select appropriate variables  
4. Create final dataset  

## Detailed Explanation

### Step 1: Import relevant data
* The ```read.table()``` function was used to import all files, which were ```.txt``` files.
* The following data was imported from the corresponding files shown in the table below:

       Data        |       File         | Object(s)
------------------ | ------------------ | ---------
Variable names     | ```features.txt``` | ```features``` (character)
Activity labels    | ```activity_labels.txt``` | ```activities``` (character)
Training data      | ```X_train.txt```, ```y_train.txt``` & ```subject_train.txt``` | ```Xtrain```, ```ytrain``` & ```subtrain``` (data frames)
Test data          | ```X_test.txt```, ```y_test.txt``` & ```subject_test.txt``` | ```Xtest```, ```ytest``` & ```subtest``` (data frames)

### Step 2: Combine data  
The objective of this step was to create a combined data frame containing all variables from the subject datasets (```subtrain``` & ```subtest```), activity datasets (```ytrain``` & ```ytest```) and feature datasets (```Xtrain``` & ```Xtest```), in that order. The data frame would have descriptive names for each variable (especially the features), and descriptive names for the various activities. It will adopt a wide form, as shown in the table below:  

Activity  | Subject | Feature1  | Feature2  | ... | FeatureN  |
--------- | ------- | --------- | --------- | --- | --------- |
WALKING   | 1       | -0.30     | -0.99     | ... | ...       |
SITTING   | 1       | 0.54      | 0.01      | ... | ...       |
SITTING   | 2       | 0.54      | 0.01      | ... | ...       |
...       | ...     | ...       | ...       | ... | ...       |
  
#### Procedure:
1. The columns in the training and test data frames were renamed in order to use the ```rbind()``` function smoothly:
  + The variables in ```Xtrain``` & ```Xtest``` were given intuitive names from the ```features``` object. The conventions are listed below:
    + ```t``` represents the time domain and ```f``` represents the frequency domain
    + ```Body```/```Gravity``` represents the type of signal recorded (from body and gravity, respectively)
    + ```Acc``` and ```Gyro``` represent the source of the signal (from the accelerator and the gyroscope, respectively)
    + ```X```, ```Y```, and ```Z``` represent the axes of movement
    + ```Jerk``` is included in the variable name if a Jerk signal was recorded
    + ```Mag``` is included in the variable name if the measurement is in fact the magnitude of the three-dimensional signals
  + The activity data (```ytrain``` & ```ytest```) was named "Activity"
  + The subject data (```subtrain``` & ```subtest```) was named "Subject"
2. The training and test data were merged separately in the order Subject, Activity, Features using the ```cbind()``` function. The training dataset (```train```) comprised 7,352 observations and 563 variables. The test dataset (```test```) comprised 2,947 observations and 563 variables.
3. A new dataset (```combined```) was then created by merging the training (```train```) and test (```test```) data. This dataset comprised 10,299 observations and 68 variables.
4. To use descriptive activity names to name the activities in the data set, the Activity column in ```combined``` was converted to a factor using the ```factor()``` function, specifying ```labels = activities``` to assign the relevant activity names (as character strings) to the appropriate factor in that column. For example, the factor integer ```1``` was converted to ```WALKING``` as in the ```activity_labels.txt``` file.

### Step 3: Select appropriate variables  
The objective of this step was to extract the relevant columns from the ```combined``` data frame and summarize the data. Relevant variables included Subject, Activity, and Features that have both mean and standard deviation (to perform basic statistical analysis).  

#### Procedure:
1. Running the ```select()``` function in ```dplyr``` yields an error: there are duplicate column names in ```combined```. Hence, duplicate column names were identified using the ```duplicated()``` function with ```names(combined)``` as the sole argument. We see that none of these columns contain the means or standard deviations of the measurements.
2. Hence, these were removed by subsetting the ```combined``` data frame for columns which did not contain duplicated names using the standard ```[``` and ```]``` operators . We obtain a data frame that may then be manipulated using ```select()```.
3. Relevant columns are then selected from ```combined```. The columns selected were:
  * Subject - to identify the test subject
  * Activity - to identify the activity undertaken by the test subject
  * ```contains("mean", ignore.case = FALSE)```: All columns that contain the word "mean" to represent measurement means - this is case sensitive to ensure that ```gravityMean```, ```tBodyAccMean```, ```tBodyAccJerkMean```, ```tBodyGyroMean``` and ```tBodyGyroJerkMean``` were excluded. Only the mean and not the standard deviation for these variables were given, implying that little statistical analysis can be conducted on these variables. Hence, I decided to exclude these variables from the dataset.
  * ```contains("std")```: All columns that contain the word "std" to represent measurement standard deviations
  * ```-contains("Freq")```: Excluding columns that contain the word "Freq" to avoid selecting columns containing the ```meanFreq()``` of measurements
4. For aesthetic purposes, several improvements were made to the variable names using the ```gsub``` function:
  * The brackets ```()``` in the variable names were removed
  * Naming errors were corrected: ```BodyBody``` was changed to ```Body```
  * Words were converted to proper case: ```mean``` and ```std``` were changed to ```Mean``` and ```Std```
  * Hyphens were removed (taking reference [Google's R Style Guide] (http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml))

### Step 4: Create final dataset
1. The ```combined``` data frame was converted to a ```tbl``` object using the ```tbl_df``` function for further manipulation and easy viewing.
2. The final dataset ```sumData``` was created by:
  + Grouping the data using the ```group_by``` function first by Activity, and then by Subject
  + Summarizing the columns using the ```summarise_each``` function, specifying ```mean``` as the only function call (by not specifying ```vars```, the ```summarise_each``` function defaults to summarizing all non-grouping variables)
3. The final dataset was then exported to the text file ```averages.txt``` in the working directory using the ```write.table()``` function. This file contained 180 observations and 68 variables.

***



