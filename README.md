# Getting and Cleaning the Data
## Peer-graded Assignment

Repository contains below mentioned files:

- r_analysis.R  
- README.md  
- CodeBook.md  

### r_analysis.R

#### Data pre-processing

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

#### Solution implementation
1. Merge training dataset and test dataset into variable ***har*** using rbind.
2. Extract columns containing mean and standard deviation for each measurements.
3. Get the list of columns for variable **har**.
4. Merge **har** and **activity_names** based on *activity_id* column.
5. Select data from columns extracted in setp 2 along with subject and activity_name from variable **har** and store it in the variable **har**.
5. Using references from *feature_info.txt* create descriptive names for column names
extracted in step 3
6. Store descriptive column names in variable **descriptive_variable_names** and 
append *subject* and *activity.name* to the beginning of **descriptive_column_names** and
use it to update column names of variable **har**.
7. to create a tidy dataset:
    1. Group data from variable **har** on *subject* and *activity.name* columns.
    2. Calculate mean of all the feature columns and store the result in **tidy_har** variable.
    3. Store the contents of **tidy_har** in a text file