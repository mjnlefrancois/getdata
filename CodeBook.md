# CodeBook  

## Introduction  
This file provides a brief description of the ```averages.txt``` dataset. This dataset contains summarized data from a study on human activity recognition involving 30 volunteers performing 6 activities. Raw data on the 3-axial linear acceleration and 3-axial angular velocity was recorded using a Samsung Galaxy S II, processed and saved in several data files. This data was then collated and summarized into the ```averages.txt``` dataset.

## Dataset Structure
The ```averages``` dataset comprises 180 observations and 68 variables. The observations comprise each of 6 activities for each of the 30 participants. The variables comprise 2 identifying variables (```Subject``` and ```Activity```), and 66 feature variables.

## Identifying Variables

### Subject:
This numeric variable takes integer values within [1, 30]. Each integer represents a unique participant in the study.

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

Convention    |   Description                     | Category        |
------------- | --------------------------------- | --------------- |
```t```       | *Time* domain signals             | Domain          |
```f```       | *Frequency* domain signals        | Domain          |
```Body```    | *Body* type signals               | Type            |
```Gravity``` | *Gravity* type signals            | Type            |
```Acc```     | Signals from the *accelerometer*  | Source          |
```Gyro```    | Signals from the *gyroscope*      | Source          |
```X```       | Signals in the *X* direction      | Direction       |
```Y```       | Signals in the *Y* direction      | Direction       |
```Z```       | Signals in the *Z* direction      | Direction       |
```Jerk```    | *Jerk* signals                    | Other           |
```Mag```     | Magnitude of signal               | Other           |
```Mean```    | Mean of measurement               | Statistic       |
```Std```     | Standard deviation of measurement | Statistic       |
> NOTE: Frequency domain signals are obtained by performing a Fast Fourier Transform (FFT) on time signals.


### Descriptions
The feature variables are averages of each variable for each activity and each subject. They are normalized and bounded within ```[-1, 1]```. The full descriptions of each variable are listed in the table below:

Variable                | Description                                               |
----------------------- | --------------------------------------------------------- |
tBodyAccMeanX           | Mean of body acceleration time signal (X-axis)            |
tBodyAccMeanY           | Mean of body acceleration time signal (Y-axis)            |
tBodyAccMeanZ           | Mean of body acceleration time signal (Z-axis)            |
tGravityAccMeanX        | Mean of gravity acceleration time signal (X-axis)         |
tGravityAccMeanY        | Mean of gravity acceleration time signal (Y-axis)         |
tGravityAccMeanZ        | Mean of gravity acceleration time signal (Z-axis)         |
tBodyAccJerkMeanX       | Mean of gravity acceleration Jerk time signal (X-axis)    |
tBodyAccJerkMeanY       | Mean of gravity acceleration Jerk time signal (Y-axis)    |
tBodyAccJerkMeanZ       | Mean of gravity acceleration Jerk time signal (Z-axis)    |
tBodyGyroMeanX          | Mean of body angular velocity time signal (X-axis)        |
tBodyGyroMeanY          | Mean of body angular velocity time signal (Y-axis)        |
tBodyGyroMeanZ          | Mean of body angular velocity time signal (Z-axis)        |
tBodyGyroJerkMeanX      | Mean of body angular velocity Jerk time signal (X-axis)   |
tBodyGyroJerkMeanY      | Mean of body angular velocity Jerk time signal (Y-axis)   |
tBodyGyroJerkMeanZ      | Mean of body angular velocity Jerk time signal (Z-axis)   |
tBodyAccMagMean         | Mean magnitude of body acceleration time signal           |
tGravityAccMagMean      | Mean magnitude of gravity acceleration time signal        |
tBodyAccJerkMagMean     | Mean magnitude of body acceleration Jerk time signal      |
tBodyGyroMagMean        | Mean magnitude of body angular velocity time signal       |
tBodyGyroJerkMagMean    | Mean magnitude of body angular velocity Jerk time signal  |
fBodyAccMeanX           | Mean of body acceleration frequency signal (X-axis)       |
fBodyAccMeanY           | Mean of body acceleration frequency signal (Y-axis)       |
fBodyAccMeanZ           | Mean of body acceleration frequency signal (Z-axis)       |
fBodyAccJerkMeanX       | Mean of body acceleration Jerk frequency signal (X-axis)  |
fBodyAccJerkMeanY       | Mean of body acceleration Jerk frequency signal (Y-axis)  |
fBodyAccJerkMeanZ       | Mean of body acceleration Jerk frequency signal (Z-axis)  |
fBodyGyroMeanX          | Mean of body angular velocity frequency signal (X-axis)   |
fBodyGyroMeanY          | Mean of body angular velocity frequency signal (Y-axis)   |
fBodyGyroMeanZ          | Mean of body angular velocity frequency signal (Z-axis)   |
fBodyAccMagMean         | Mean magnitude of body acceleration 
fBodyAccJerkMagMean     | 
fBodyGyroMagMean        | 
fBodyGyroJerkMagMean    | 
tBodyAccStdX            | 
tBodyAccStdY            | 
tBodyAccStdZ            | 
tGravityAccStdX         | 
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagStd
tGravityAccMagStd
tBodyAccJerkMagStd
tBodyGyroMagStd
tBodyGyroJerkMagStd
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyAccMagStd
fBodyAccJerkMagStd
fBodyGyroMagStd
fBodyGyroJerkMagStd

