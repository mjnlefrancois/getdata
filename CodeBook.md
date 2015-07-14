# CodeBook  

## Introduction  
This file provides a brief description of the naming conventions used for the variables in the final output of the script, ```run_analysis.R```.

## Feature Variables  
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
