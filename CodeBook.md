# CodeBook  

## Introduction  
This file provides a brief description of the ```averages.txt``` dataset. This dataset contains summarized data from a study on human activity recognition involving 30 volunteers performing 6 activities. Raw data on 3-axial linear acceleration and 3-axial angular velocity was recorded using a Samsung Galaxy S II, processed and saved in several data files. This data was then collated and summarized into the ```averages.txt``` dataset.

## Dataset Structure
The ```averages``` dataset comprises 180 observations and 68 variables. The observations comprise each of 6 activities for each of the 30 participants. The variables comprise 2 identifying variables (```Subject``` and ```Activity```), and 66 feature variables.

## Identifying Variables

### Subject:
This numeric variable takes integer values within ```[1, 30]```. Each integer represents a unique participant in the study.

### Activity:
This factor variable has six levels. It represents the 6 activities performed during the study.

Level | Label               |
----- | ------------------- |
1     | WALKING             |
2     | WALKING_UPSTAIRS    |
3     | WALKING_DOWNSTAIRS  |
4     | SITTING             |
5     | STANDING            |
6     | LAYING              |

## Feature Variables  

### Naming Conventions
The table below describes the naming conventions used for the feature variables. Each feature variable must have a domain, a type, a source and a statistic. It may or may not have a direction, and may have more than one "other" characteristic (Jerk/Mag).

Convention    |   Description                       | Category        |
------------- | ----------------------------------- | --------------- |
```t```       | *Time* domain signals               | Domain          |
```f```       | *Frequency* domain signals          | Domain          |
```Body```    | *Body* type signals                 | Type            |
```Gravity``` | *Gravity* type signals              | Type            |
```Acc```     | Signals from the *accelerometer*    | Source          |
```Gyro```    | Signals from the *gyroscope*        | Source          |
```X```       | Signals in the *X* direction        | Direction       |
```Y```       | Signals in the *Y* direction        | Direction       |
```Z```       | Signals in the *Z* direction        | Direction       |
```Jerk```    | *Jerk* signals                      | Other           |
```Mag```     | *Euclidean magnitude* of signal     | Other           |
```Mean```    | *Mean* of measurement               | Statistic       |
```Std```     | *Standard deviation* of measurement | Statistic       |
> NOTE: In simple terms, domain refers to the X-axis on a graph. Data in the time domain (```t```) can be converted to data in the frequency domain (```f```) using the Fast Fourier Transform(FFT).


### Descriptions
The feature variables are averages of each variable for each activity and each subject. They are normalized and bounded within ```[-1, 1]```. The full descriptions of each variable are listed in the table below:

Variable                | Description                                     
----------------------- | -------------------------------------------
```tBodyAccMeanX```           | Mean X-axis body acceleration (time domain)
```tBodyAccMeanY```           | Mean Y-axis body acceleration (time domain)
```tBodyAccMeanZ```           | Mean Z-axis body acceleration (time domain)
```tGravityAccMeanX```        | Mean X-axis gravity acceleration (time domain)
```tGravityAccMeanY```        | Mean Y-axis gravity acceleration (time domain)
```tGravityAccMeanZ```        | Mean Z-axis gravity acceleration (time domain)
```tBodyAccJerkMeanX```       | Mean X-axis body acceleration jerk (time domain)
```tBodyAccJerkMeanY```       | Mean Y-axis body acceleration jerk (time domain)
```tBodyAccJerkMeanZ```       | Mean Z-axis body acceleration jerk (time domain)
```tBodyGyroMeanX```          | Mean X-axis body angular velocity (time domain)
```tBodyGyroMeanY```          | Mean Y-axis body angular velocity (time domain)
```tBodyGyroMeanZ```          | Mean Z-axis body angular velocity (time domain)
```tBodyGyroJerkMeanX```      | Mean X-axis body angular velocity jerk (time domain)
```tBodyGyroJerkMeanY```      | Mean Y-axis body angular velocity jerk (time domain)
```tBodyGyroJerkMeanZ```      | Mean Z-axis body angular velocity jerk (time domain)
```tBodyAccMagMean```         | Mean Euclidean magnitude of body acceleration (time domain)
```tGravityAccMagMean```      | Mean Euclidean magnitude of gravity acceleration (time domain)
```tBodyAccJerkMagMean```     | Mean Euclidean magnitude of body acceleration jerk (time domain)
```tBodyGyroMagMean```        | Mean Euclidean magnitude of body angular velocity (time domain)
```tBodyGyroJerkMagMean```    | Mean Euclidean magnitude of body angular velocity jerk (time domain)
```fBodyAccMeanX```           | Mean X-axis body acceleration (frequency domain)
```fBodyAccMeanY```           | Mean Y-axis body acceleration (frequency domain)
```fBodyAccMeanZ```           | Mean Z-axis body acceleration (frequency domain)
```fBodyAccJerkMeanX```       | Mean X-axis body acceleration jerk (frequency domain)
```fBodyAccJerkMeanY```       | Mean Y-axis body acceleration jerk (frequency domain)
```fBodyAccJerkMeanZ```       | Mean Z-axis body acceleration jerk (frequency domain)
```fBodyGyroMeanX```          | Mean X-axis body angular velocity (frequency domain)
```fBodyGyroMeanY```          | Mean Y-axis body angular velocity (frequency domain)
```fBodyGyroMeanZ```          | Mean Z-axis body angular velocity (frequency domain)
```fBodyAccMagMean```         | Mean Euclidean magnitude of body acceleration (frequency domain)
```fBodyAccJerkMagMean```     | Mean Euclidean magnitude of body acceleration jerk (frequency domain)
```fBodyGyroMagMean```        | Mean Euclidean magnitude of body angular velocity (frequency domain)
```fBodyGyroJerkMagMean```    | Mean Euclidean magnitude of body angular velocity jerk (frequency domain)
```tBodyAccStdX```            | Standard deviation of X-axis body acceleration (time domain)
```tBodyAccStdY```            | Standard deviation of Y-axis body acceleration (time domain)
```tBodyAccStdZ```            | Standard deviation of Z-axis body acceleration (time domain)
```tGravityAccStdX```         | Standard deviation of X-axis gravity acceleration (time domain)
```tGravityAccStdY```         | Standard deviation of Y-axis gravity acceleration (time domain)
```tGravityAccStdZ```         | Standard deviation of Z-axis gravity acceleration (time domain)
```tBodyAccJerkStdX```        | Standard deviation of X-axis body acceleration jerk (time domain)
```tBodyAccJerkStdY```        | Standard deviation of Y-axis body acceleration jerk (time domain)
```tBodyAccJerkStdZ```        | Standard deviation of Z-axis body acceleration jerk (time domain)
```tBodyGyroStdX```           | Standard deviation of X-axis angular velocity (time domain)
```tBodyGyroStdY```           | Standard deviation of Y-axis angular velocity (time domain)
```tBodyGyroStdZ```           | Standard deviation of Z-axis angular velocity (time domain)
```tBodyGyroJerkStdX```       | Standard deviation of X-axis angular velocity jerk (time domain)
```tBodyGyroJerkStdY```       | Standard deviation of Y-axis angular velocity jerk (time domain)
```tBodyGyroJerkStdZ```       | Standard deviation of Z-axis angular velocity jerk (time domain)
```tBodyAccMagStd```          | Standard deviation of Euclidean magnitude of body acceleration (time domain)
```tGravityAccMagStd```       | Standard deviation of Euclidean magnitude of gravity acceleration (time domain)
```tBodyAccJerkMagStd```      | Standard deviation of Euclidean magnitude of body acceleration jerk (time domain)
```tBodyGyroMagStd```         | Standard deviation of Euclidean magnitude of body angular velocity (time domain)
```tBodyGyroJerkMagStd```     | Standard deviation of Euclidean magnitude of body angular velocity jerk (time domain)
```fBodyAccStdX```            | Standard deviation of X-axis body acceleration (frequency domain)
```fBodyAccStdY```            | Standard deviation of Y-axis body acceleration (frequency domain)
```fBodyAccStdZ```            | Standard deviation of Z-axis body acceleration (frequency domain)
```fBodyAccJerkStdX```        | Standard deviation of X-axis body acceleration jerk (frequency domain)
```fBodyAccJerkStdY```        | Standard deviation of Y-axis body acceleration jerk (frequency domain)
```fBodyAccJerkStdZ```        | Standard deviation of Z-axis body acceleration jerk (frequency domain)
```fBodyGyroStdX```           | Standard deviation of X-axis body angular velocity (frequency domain)
```fBodyGyroStdY```           | Standard deviation of Y-axis body angular velocity (frequency domain)
```fBodyGyroStdZ```           | Standard deviation of Z-axis body angular velocity (frequency domain)
```fBodyAccMagStd```          | Standard deviation of Euclidean magnitude of body acceleration (frequency domain)
```fBodyAccJerkMagStd```      | Standard deviation of Euclidean magnitude of body acceleration jerk (frequency domain)
```fBodyGyroMagStd```         | Standard deviation of Euclidean magnitude of body angular velocity (frequency domain)
```fBodyGyroJerkMagStd```     | Standard deviation of Euclidean magnitude of body angular velocity jerk (frequency domain)
  
***

