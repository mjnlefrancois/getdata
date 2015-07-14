# ReadMe file for run_analysis.R

## Introduction

### Required packages
Only the [```dplyr```](http://cran.r-project.org/web/packages/dplyr/index.html) package is required for this script.

### Overview
This script performs the following functions in the order listed:
  
1. Import variable and activity names  
2. Import training and test data  
3. Combine and rename columns for training and test data  
4. Select appropriate variables  
5. Create final dataset  

## Detailed Explanation

### Step 1: Import variable and activity names
* Variable names were imported from the file ```features.txt``` using the ```write.table()``` function  
* Activity names were imported from the file ```activity_labels.txt``` using the ```write.table()``` function  
* 
