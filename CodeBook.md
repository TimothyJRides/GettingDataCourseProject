---
title: "Codebook"
author: "TimothyJ"
date: "July 24, 2014"
output: html_document
---



### Data Values

The final data gives average values of the mean and standard deviation of 3 dimensional movements (x,y,z), and accleration of those movements, of 30 subjects wearing an accelerometer and gyroscope, while performing certain activities. All measurements are normalized [-1,1].


### The four columns in the tidy data set:

1. subject
2. activity
3. motion
4. average


### The Subjects - "subject"

The 30 subjects are identified only by integer, 1 thru 30.


### The six activities - "activity"

The 6 activities are identified by character strings.

1. Walking
2. Walking upstairs
3. Walking downstairs
4. Sitting
5. Standing
6. Laying


### The movements meaured by the accelerometer and gyroscope:

XYZ signifies measurements, given in 3 dimensions. For tBodyAcc, you will have tBodyAccmeanX, tBodyAccmeanY, and tBodyAccmeanZ, all three for standard deviation, tBodyAccstdX... Mag signifies magnitude. All measurements are normalized [-1,1], and are numeric.

More detailed information is available in the features_info.txt file accompanying the raw data.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

### The complete list of names of measurements - "motion"

* tBodyAccmeanX
* tBodyAccmeanY
* tBodyAccmeanZ
* tGravityAccmeanX
* tGravityAccmeanY
* tGravityAccmeanZ
* tBodyAccJerkmeanX
* tBodyAccJerkmeanY
* tBodyAccJerkmeanZ
* tBodyGyromeanX
* tBodyGyromeanY
* tBodyGyromeanZ
* tBodyGyroJerkmeanX
* tBodyGyroJerkmeanY
* tBodyGyroJerkmeanZ
* tBodyAccMagmean
* tGravityAccMagmean
* tBodyAccJerkMagmean
* tBodyGyroMagmean
* tBodyGyroJerkMagmean
* fBodyAccmeanX
* fBodyAccmeanY
* fBodyAccmeanZ
* fBodyAccmeanFreqX
* fBodyAccmeanFreqY
* fBodyAccmeanFreqZ
* fBodyAccJerkmeanX
* fBodyAccJerkmeanY
* fBodyAccJerkmeanZ
* fBodyAccJerkmeanFreqX
* fBodyAccJerkmeanFreqY
* fBodyAccJerkmeanFreqZ
* fBodyGyromeanX
* fBodyGyromeanY
* fBodyGyromeanZ
* fBodyGyromeanFreqX
* fBodyGyromeanFreqY
* fBodyGyromeanFreqZ
* fBodyAccMagmean
* fBodyAccMagmeanFreq
* fBodyAccJerkMagmean
* fBodyAccJerkMagmeanFreq
* fBodyGyroMagmean
* fBodyGyroMagmeanFreq
* fBodyGyroJerkMagmean
* fBodyGyroJerkMagmeanFreq
* tBodyAccstdX
* tBodyAccstdY
* tBodyAccstdZ
* tGravityAccstdX
* tGravityAccstdY
* tGravityAccstdZ
* tBodyAccJerkstdX
* tBodyAccJerkstdY
* tBodyAccJerkstdZ
* tBodyGyrostdX
* tBodyGyrostdY
* tBodyGyrostdZ
* tBodyGyroJerkstdX
* tBodyGyroJerkstdY
* tBodyGyroJerkstdZ
* tBodyAccMagstd
* tGravityAccMagstd
* tBodyAccJerkMagstd
* tBodyGyroMagstd
* tBodyGyroJerkMagstd
* fBodyAccstdX
* fBodyAccstdY
* fBodyAccstdZ
* fBodyAccJerkstdX
* fBodyAccJerkstdY
* fBodyAccJerkstdZ
* fBodyGyrostdX
* fBodyGyrostdY
* fBodyGyrostdZ
* fBodyAccMagstd
* fBodyAccJerkMagstd
* fBodyGyroMagstd
* fBodyGyroJerkMagstd