# CodeBook  

## Introduction  
This file provides a brief description of the ```averages.txt``` dataset. This dataset contains summarized data from a study on human activity recognition involving 30 volunteers performing 6 activities. Raw data on the 3-axial linear acceleration and 3-axial angular velocity was recorded using a Samsung Galaxy S II, processed and saved in several data files. This data was then collated and summarized into the ```averages.txt``` dataset.

## Dataset Structure
The ```averages``` dataset comprises 180 observations and 68 variables. The observations comprise each of 6 activities for each of the 30 participants. The variables comprise 2 identifying variables (```Subject``` and ```Activity```), and 66 measurement variables.

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

### Descriptions
Note that the feature variables are 
