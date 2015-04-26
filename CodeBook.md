#Codebook for the tidied dataset

##Variables
* Subject: The number of the test person
* Activity: The activity performed for the observation

The following variables include the mean of the original variable. All values are scaled into range -1, 1. 
For the meaning of the variables, please refer the original dataset at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

* MeanTimeBodyAccelerometerMeanX
* MeanTimeBodyAccelerometerMeanY
* MeanTimeBodyAccelerometerMeanZ
* MeanTimeBodyAccelerometerStdX
* MeanTimeBodyAccelerometerStdY
* MeanTimeBodyAccelerometerStdZ
* MeanTimeGravityAccelerometerMeanX
* MeanTimeGravityAccelerometerMeanY
* MeanTimeGravityAccelerometerMeanZ
* MeanTimeGravityAccelerometerStdX
* MeanTimeGravityAccelerometerStdY
* MeanTimeGravityAccelerometerStdZ
* MeanTimeBodyAccelerometerJerkMeanX
* MeanTimeBodyAccelerometerJerkMeanY
* MeanTimeBodyAccelerometerJerkMeanZ
* MeanTimeBodyAccelerometerJerkStdX
* MeanTimeBodyAccelerometerJerkStdY
* MeanTimeBodyAccelerometerJerkStdZ
* MeanTimeBodyGyroscopeMeanX
* MeanTimeBodyGyroscopeMeanY
* MeanTimeBodyGyroscopeMeanZ
* MeanTimeBodyGyroscopeStdX
* MeanTimeBodyGyroscopeStdY
* MeanTimeBodyGyroscopeStdZ
* MeanTimeBodyGyroscopeJerkMeanX
* MeanTimeBodyGyroscopeJerkMeanY
* MeanTimeBodyGyroscopeJerkMeanZ
* MeanTimeBodyGyroscopeJerkStdX
* MeanTimeBodyGyroscopeJerkStdY
* MeanTimeBodyGyroscopeJerkStdZ
* MeanTimeBodyAccelerometerMagnitudeMean
* MeanTimeBodyAccelerometerMagnitudeStd
* MeanTimeGravityAccelerometerMagnitudeMean
* MeanTimeGravityAccelerometerMagnitudeStd
* MeanTimeBodyAccelerometerJerkMagnitudeMean
* MeanTimeBodyAccelerometerJerkMagnitudeStd
* MeanTimeBodyGyroscopeMagnitudeMean
* MeanTimeBodyGyroscopeMagnitudeStd
* MeanTimeBodyGyroscopeJerkMagnitudeMean
* MeanTimeBodyGyroscopeJerkMagnitudeStd
* MeanFrequencyBodyAccelerometerMeanX
* MeanFrequencyBodyAccelerometerMeanY
* MeanFrequencyBodyAccelerometerMeanZ
* MeanFrequencyBodyAccelerometerStdX
* MeanFrequencyBodyAccelerometerStdY
* MeanFrequencyBodyAccelerometerStdZ
* MeanFrequencyBodyAccelerometerJerkMeanX
* MeanFrequencyBodyAccelerometerJerkMeanY
* MeanFrequencyBodyAccelerometerJerkMeanZ
* MeanFrequencyBodyAccelerometerJerkStdX
* MeanFrequencyBodyAccelerometerJerkStdY
* MeanFrequencyBodyAccelerometerJerkStdZ
* MeanFrequencyBodyGyroscopeMeanX
* MeanFrequencyBodyGyroscopeMeanY
* MeanFrequencyBodyGyroscopeMeanZ
* MeanFrequencyBodyGyroscopeStdX
* MeanFrequencyBodyGyroscopeStdY
* MeanFrequencyBodyGyroscopeStdZ
* MeanFrequencyBodyAccelerometerMagnitudeMean
* MeanFrequencyBodyAccelerometerMagnitudeStd
* MeanFrequencyBodyBodyAccelerometerJerkMagnitudeMean
* MeanFrequencyBodyBodyAccelerometerJerkMagnitudeStd
* MeanFrequencyBodyBodyGyroscopeMagnitudeMean
* MeanFrequencyBodyBodyGyroscopeMagnitudeStd
* MeanFrequencyBodyBodyGyroscopeJerkMagnitudeMean
* MeanFrequencyBodyBodyGyroscopeJerkMagnitudeStd

##Transformations

The original data was read and the test and train sets were combines into one set. 
Only the variables containing "mean" or "std" were kept. The mean of the variables 
were calculated for each subject, activity pair.
