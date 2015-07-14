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

       Data        |       File         | Object
------------------ | ------------------ | ---------
Variable names     | ```features.txt``` | ```features```
Activity labels    | ```activity_labels.txt``` | ```activities```
Training data      | ```X_train.txt```, ```y_train.txt``` & ```subject_train.txt``` | ```Xtrain```, ```ytrain``` & ```subtrain```
Test data          | 

### Step 2: Combine Data
* 

