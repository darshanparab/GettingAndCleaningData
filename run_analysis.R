library(dplyr)
library(tidyr)

# Get current working directory and set a new working directory
root = getwd()
data_dir = paste(root,"data",sep = "/")
script_dir = paste(root,"script",sep = "/")
data_file = paste(data_dir,"Dataset.zip",sep = "/")

# Create the data directory if it doesn't exist
if(!dir.exists(data_dir)) dir.create(data_dir)

# Download the dataset if not preset already
if(!file.exists(data_file)) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                destfile = data_file,
                method = "curl")
}

# Unzip the dataset
setwd(data_dir)
unzip(data_file)
setwd(root)

# Define path to training and test dataset
train_features = paste(root,"data","UCI HAR Dataset","train","X_train.txt",sep = "/")
test_features = paste(root,"data","UCI HAR Dataset","test","X_test.txt", sep = "/")

# Define path to training and test activity sets
train_activity = paste(root,"data","UCI HAR Dataset","train","y_train.txt",sep = "/")
test_activity = paste(root,"data","UCI HAR Dataset","test","y_test.txt", sep = "/")

# Define path to training and test subject sets
train_subjects = paste(root,"data","UCI HAR Dataset","train","subject_train.txt",sep = "/")
test_subjects = paste(root,"data","UCI HAR Dataset","test","subject_test.txt", sep = "/")

# Read list of features
features <- read.table(paste(data_dir,"UCI HAR Dataset", "features.txt",sep = "/"), col.names = c("id","name"))

# Read train and test datasets
train_features_dataset <- read.table(train_features, col.names = features$name)
test_features_dataset <- read.table(test_features, col.names = features$name)

# Read train and test activity sequence
train_activity_dataset <- read.table(train_activity, col.names = c("activity_id"))
test_activity_dataset <- read.table(test_activity, col.names = c("activity_id"))

# Read train and test subjects sequence
train_subjects_dataset <- read.table(train_subjects, col.names = c("subject"))
test_subjects_dataset <- read.table(test_subjects, col.names = c("subject"))
activity_names <- read.table(paste(data_dir,"UCI HAR Dataset", "activity_labels.txt",sep = "/"), col.names = c("activity_id","activity_name"))

#---------------------------- Solution starts here --------------------------------

# 1. Merges the training and the test sets to create one data set.
har <- rbind (cbind(train_subjects_dataset, train_activity_dataset,train_features_dataset),
              cbind(test_subjects_dataset, test_activity_dataset, test_features_dataset))

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
selectedFeatures <- grep("(.*(mean|std)\\.\\.|subject|activity_id)$",names(har), value = TRUE)
har <- select(har, selectedFeatures)

# 3. Uses descriptive activity names to name the activities in the data set
har <- merge(har,activity_names, by = "activity_id")

# 4. Appropriately labels the data set with descriptive variable names. 

descriptive_variable_names = c("activity_id",
                               "subject",
                               "time.domain.linear.acceleration.magnitude.mean",
                               "time.domain.linear.acceleration.magnitude.standard.deviation",
                               "time.domain.gravity.acceleration.magnitude.mean",
                               "time.domain.gravity.acceleration.magnitude.standard.deviation",
                               "time.domain.linear.acceleration.jerk.magnitude.mean",
                               "time.domain.linear.acceleration.jerk.magnitude.standard.deviation",
                               "time.domain.angular.velocity.magnitude.mean",
                               "time.domain.angular.velocity.magnitude.standard.deviation",
                               "time.domain.angular.velocity.jerk.magnitude.mean",
                               "time.domain.angular.velocity.jerk.magnitude.standard.deviation",
                               "frequency.domain.body.acceleration.magnitude.mean",
                               "frequency.domain.body.acceleration.magnitude.standard.deviation",
                               "frequency.domain.linear.acceleration.jerk.magnitude.mean",
                               "frequency.domain.linear.acceleration.jerk.magnitude.standard.deviation",
                               "frequency.domain.angular.velocity.magnitude.mean",
                               "frequency.domain.angular.velocity.magnitude.standard.deviation",
                               "frequency.domain.angular.velocity.jerk.magnitude.mean",
                               "frequency.domain.angular.velocity.jerk.magnitude.standard.deviation",
                               "activity_name"
                               )
names(har) <- descriptive_variable_names

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_har <-
  har %>%
  select(-activity_id) %>%
  gather(variable,values,-c("subject","activity_name")) %>%
  group_by(subject,activity_name,variable) %>%
  summarize(average = mean(values)) %>%
  spread("variable","average")

# Export tidy dataset to CSV
tidy_har %>% write.csv("tidy_har.csv", row.names = FALSE)

#----------------------------- Solution ends here ---------------------------------
