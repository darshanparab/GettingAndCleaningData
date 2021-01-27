# Codebook
## Data pre-processing

1. In the directory where r_analysis.R script is stored, referred to as root directory
henceforth, create a directory with name "data".
2. Download the zip file containing source data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and store it under data folder as Dataset.zip.
3. Extract the contents of Dataset.zip. This will extract a folder "UCI HAR Dataset"
4. Read features names from file data/UCI HAR Dataset/features.txt into variable
**features** an name the columns as id and name.
5. Read train feature data set from file *data/UCI HAR Dataset/train/X_train.txt* into variable **train_features_dataset** and assign column names using **name** column of feature variable.
6. Read sequence of activities for train data set from file data/UCI HAR Dataset/train/y_train.txt into variable **train_activity_dataset** and
assign column name as **activity_id**.
7. Read sequence of subjects for train data set from file data/UCI HAR Dataset/train/subject_train.txt into variable **train_subjects_dataset** and
assign column name as **subject**.
8. Read test feature data set from file data/UCI HAR Dataset/test/X_test.txt and
store it in variable **test_features_dataset** and assign column names using **name** column of feature variable.
9. Read sequence of activities for train data set from file data/UCI HAR Dataset/test/y_test.txt into variable **test_activity_dataset** and
assign column name as **activity_id**.
10. Read sequence of subjects for test data set from file data/UCI HAR Dataset/train/subject_test.txt into variable **test_subjects_dataset** and
assign column name as **subject**.
11. Read activity names from file data/UCI HAR Dataset/activity_labels.txt into variable
**activity_names** and assign column names as activity_id and activity_name.
12. Create a training dataset by merging train_features_dataset, train_activity_dataset and train_subjects_dataset using cbind.
13. Create a test dataset by merging test_features_dataset, test_activity_dataset and test_subjects_dataset using cbind.

## Solution implementation
1. Merge training dataset and test dataset into variable ***har*** using rbind.
2. Extract columns containing mean and standard deviation for each measurements along with subject and activity_id columns.
3. Select data from columns extracted in above step from variable **har** and store it in the variable **har**.
4. To append descriptive activity names to the dataset, merge variable **activity_names** with **har** using column activity_id.
5. Get the list of columns for variable **har**.
5. Using below references from *feature_info.txt* create descriptive names for columns in the same order
that we got for column names in above step.
- t : time domain  
- f : frequesncy domain  
- BodyAccMagnitude : Magnitude of linear acceleration from accelerometer  
- GravityAccMag : Magnitude of gravity acceleration  from accelerometer  
- BodyGyroMag : Magnitude of angular velocity from gyroscope  
- BodyAccJerkMag : Magnitude of jerk in linear acceleration  
- BodyGyroJerkMag : Magnitude of jerk in angular velocity  
- mean : mean of measurement  
- std : standard deviation of measurement  
6. Store descriptive column names in variable **descriptive_variable_names** and assing this variable
to column names of variabel **har**.
7. to create a tidy dataset:
    1. Select all the columns from variable **har** except *activity_id*.
    2. Using gather function merge data from all the feature columns into *variable* and *values* columns. *variable* column stores a feature column name (key parameter for gather) and *values* column stores value of respective feature(value parameter for gather). exclude *subject* and *activity_name* columns while applying gather function.
    3. Group the data by *subject*, *activity_name* and *variable* columns.
    4. Summarize the grouped data and apply mean function on *values* column. Store results in
    *average* column.
    5. Apply spread function on columns *variable* and *average* to obtain the desired tidy dataset.
    6. Store the tidy dataset in CSV file