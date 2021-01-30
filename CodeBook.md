Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

--- Codebook updates for solution starts here ---

Features containing mean and standard deviation for all the measurements are selected
along with subject and activity details:

subject

activity_name

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()



To obtain final dataframe, above features are assigned descriptive names as below
and activity_id column is removed. Mean of all the feature for each subject per activity
is calculated.

subject

  Unique ID of the person undergone the process  
  
activity_name

   Name of the activity for which measurements are taken
  
time.domain.linear.acceleration.mean.x

  Mean of the linear acceleration along X axis in time domain
  
time.domain.linear.acceleration.mean.y

  Mean of the linear acceleration along Y axis in time domain
  
time.domain.linear.acceleration.mean.z

  Mean of the linear acceleration along Z axis in time domain
  
time.domain.linear.acceleration.standard.deviation.x

  Standard deviation of the linear acceleration along X axis in time domain
  
time.domain.linear.acceleration.standard.deviation.y

  Standard deviation of the linear acceleration along Y axis in time domain
  
time.domain.linear.acceleration.standard.deviation.z

  Standard deviation of the linear acceleration along Z axis in time domain
  
time.domain.gravity.acceleration.mean.x

  Mean of the gravity acceleration along X axis in time domain
  
time.domain.gravity.acceleration.mean.y

  Mean of the gravity acceleration along y axis in time domain
  
time.domain.gravity.acceleration.mean.z

  Mean of the gravity acceleration along Z axis in time domain
  
time.domain.gravity.acceleration.standard.deviation.x

  Standard Deviation of the gravity acceleration along X axis in time domain
  
time.domain.gravity.acceleration.standard.deviation.y

  Standard Deviation of the gravity acceleration along Y axis in time domain
  
time.domain.gravity.acceleration.standard.deviation.z

  Standard Deviation of the gravity acceleration along Z axis in time domain
  
time.domain.linear.acceleration.jerk.mean.x

  Mean of jerk in linear acceleration along X axis in time domain
  
time.domain.linear.acceleration.jerk.mean.y

  Mean of jerk in linear acceleration along Y axis in time domain
  
time.domain.linear.acceleration.jerk.mean.z

  Mean of jerk in linear acceleration along Z axis in time domain
  
time.domain.linear.acceleration.jerk.standard.deviation.x

  Standard Deviation of jerk in linear acceleration along X axis in time domain
  
time.domain.linear.acceleration.jerk.standard.deviation.y

  Standard Deviation of jerk in linear acceleration along Y axis in time domain
  
time.domain.linear.acceleration.jerk.standard.deviation.z

  Standard Deviation of jerk in linear acceleration along Z axis in time domain
  
time.domain.angular.velocity.mean.x

  Mean of the angular velocity along X axis in time domain
  
time.domain.angular.velocity.mean.y

  Mean of the angular velocity along Y axis in time domain
  
time.domain.angular.velocity.mean.z

  Mean of the angular velocity along Z axis in time domain
  
time.domain.angular.velocity.standard.deviation.x

  Standard Deviation of the angular velocity along X axis in time domain
  
time.domain.angular.velocity.standard.deviation.y

  Standard Deviation of the angular velocity along y axis in time domain
  
time.domain.angular.velocity.standard.deviation.z

  Standard Deviation of the angular velocity along Z axis in time domain
  
time.domain.angular.velocity.jerk.mean.x

  Mean of jerk in angular velocity along X axis in time domain
  
time.domain.angular.velocity.jerk.mean.y

  Mean of jerk in angular velocity along Y axis in time domain

time.domain.angular.velocity.jerk.mean.z

  Mean of jerk in angular velocity along Z axis in time domain
  
time.domain.angular.velocity.jerk.standard.deviation.x

  Standard Deviation of jerk in angular velocity along X axis in time domain

time.domain.angular.velocity.jerk.standard.deviation.y

  Standard Deviation of jerk in angular velocity along X axis in time domain

time.domain.angular.velocity.jerk.standard.deviation.z

  Standard Deviation of jerk in angular velocity along Z axis in time domain
  
time.domain.linear.acceleration.magnitude.mean

  Mean of magnitude of linear acceleration in time domain

time.domain.linear.acceleration.magnitude.standard.deviation

  Standard Deviation of magnitude of linear acceleration in time domain
  
time.domain.gravity.acceleration.magnitude.mean

  Mean of magnitude of gravity acceleration in time domain
  
time.domain.gravity.acceleration.magnitude.standard.deviation

  Standard Deviaton of magnitude of linear acceleration in time domain
 
time.domain.linear.acceleration.jerk.magnitude.mean

  Mean of jerk in magnitude of linear acceleration in time domain
  
time.domain.linear.acceleration.jerk.magnitude.standard.deviation

  Standard Deviation of jerk in magnitude of linear acceleration
  
time.domain.angular.velocity.magnitude.mean

  Mean of magnitude of angular velocity in time domain
  
time.domain.angular.velocity.magnitude.standard.deviation

  Standard Deviation of magnitude of angular velocity in time domain

time.domain.angular.velocity.jerk.magnitude.mean

  Mean of magnitude of jerk in angular velocity in time domain
  
time.domain.angular.velocity.jerk.magnitude.standard.deviation

  Standard Deviation of jerk in magnitude of angular velocity in time domain

frequency.domain.linear.acceleration.mean.x

  Mean of linear acceleration along X axis in frequency domain

frequency.domain.linear.acceleration.mean.y

  Mean of linear acceleration along Y axis in frequency domain
  
frequency.domain.linear.acceleration.mean.z

  Mean of linear acceleration along Z axis in frequency domain
  
frequency.domain.linear.acceleration.standard.deviation.x

  Standard Deviation of linear acceleration along X axis in frequency domain
  
frequency.domain.linear.acceleration.standard.deviation.y

  Standard Deviation of linear acceleration along Y axis in frequency domain
  
frequency.domain.linear.acceleration.standard.deviation.z

  Standard Deviation of linear acceleration along Z axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.mean.x

  Mean of jerk in linear acceleration along X axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.mean.y

  Mean of jerk in linear acceleration along Y axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.mean.z

  Mean of jerk in linear acceleration along Z axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.standard.deviation.x

  Standard Deviation of jerk in linear acceleration along X axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.standard.deviation.y

  Standard Deviation of jerk in linear acceleration along Y axis in frequency domain
  
frequency.domain.linear.acceleration.jerk.standard.deviation.z

  Standard Deviation of jerk in linear acceleration along Z axis in frequency domain
  
frequency.domain.angular.velocity.mean.x

  Mean of angular velocity along X axis in frequency domain
  
frequency.domain.angular.velocity.mean.y

  Mean of angular velocity along Y axis in frequency domain
  
frequency.domain.angular.velocity.mean.z

  Mean of angular velocity along Z axis in frequency domain
  
frequency.domain.angular.velocity.standard.deviation.x

  Standard Deviation of angular velocity along X axis in frequency domain
  
frequency.domain.angular.velocity.standard.deviation.y

  Standard Deviation of angular velocity along Y axis in frequency domain
  
frequency.domain.angular.velocity.standard.deviation.z

  Standard Deviation of angular velocity along Z axis in frequency domain
  
frequency.domain.linear.acceleration.magnitude.mean

  Mean of the magnitude of linear acceleration in frequency domain
  
frequency.domain.linear.acceleration.magnitude.standard.deviation

  Standard Deviation of the magnitude of linear acceleration in frequency domain
  
frequency.domain.linear.acceleration.jerk.magnitude.mean

  Mean of the jerk in magnitude of linear acceleration in frequency domain
  
frequency.domain.linear.acceleration.jerk.magnitude.standard.deviation

  Standard Deviation of the jerk in magnitude of linear acceleration in frequency domain
  
frequency.domain.angular.velocity.magnitude.mean

  Mean of the magnitude of angular velocity in frequency domain
  
frequency.domain.angular.velocity.magnitude.standard.deviation

  Standard Deviation of the magnitude of angular velocity in frequency domain

frequency.domain.angular.velocity.jerk.magnitude.mean

  Mean of the magnitude of jerk in the angular velocity in frequency domain
  
frequency.domain.angular.velocity.jerk.magnitude.standard.deviation

  Standard Deviation of the magnitude of jerk in the angular velocity in frequency domain