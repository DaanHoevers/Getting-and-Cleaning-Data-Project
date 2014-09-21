## Run Analysis files containing all scripts used for the course project 
## of Getting and Cleaning Data

# download data set from source and unzip
if(!file.exists("UCI HAR Dataset")){
        file.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(file.url, destfile = "getdata_projectfiles_UCI HAR Dataset.zip")
        unzip("getdata_projectfiles_UCI HAR Dataset.zip"
              , exdir = "UCI HAR Dataset")
        }

setwd("./UCI HAR Dataset/UCI HAR Dataset")

# read required files in R
# read X_test.txt: 30% test results set
test <- read.table("./test/X_test.txt")

# read X_train.txt: 70% train results set
train <- read.table("./train/X_train.txt")

# read features.txt: to be column names
features <- read.table("features.txt")

# read activity_labels.txt: overview of class labels with activity names
act_labels <- read.table("activity_labels.txt")

# read y_train.txt: containing the training labels
act_train <- read.table("./train/y_train.txt")

# read y_test.txt: containing the test labels
act_test <- read.table("./test/y_test.txt")

# read subject_train.txt: subject performing activity in row training set
subj_train <- read.table("./train/subject_train.txt")

# read subject_test.txt: subject performing activity in row test set
subj_test <- read.table("./test/subject_test.txt")

# Question 1. Merges the training and the test sets to create one data set.
wearable_data <- rbind(train,test)      # row bind test and train

# Question 2. Extracts only the measurements on the mean 
# and standard deviation for each measurement

sd <- grep("std", features[,2])                         # determine position of std dev 
mn <- grep("mean", features[,2])                        # determine position of mean
mf <- grep("meanFreq", features[,2])                    # determine position of meanFreq
mn <- mn[!is.element(mn, mf)]                           # exclude all meanFreq
wearable_data <- wearable_data[, sort(c(sd, mn))]       # select correct columns

# Question 3. Uses descriptive activity names to name 
# the activities in the data set

act <- rbind(act_train, act_test)                       # row bind column activities train and test
lab_v <- factor(act[,1], levels = c(1,2,3,4,5,6)
            , labels = act_labels[,2])                  # vector with descriptive activity labels
lab_m <- matrix(lab_v)                                  # create matrix with 1 column from vector
wearable_data <- cbind(lab_m[,1], wearable_data)        # add labels to wearables data set

# Question 4. Appropriately labels the data set 
# with descriptive variable names

wear_feat <- features[sort(c(sd,mn)), ]                 # select the appropriate features 
columnname <- as.character(wear_feat[,2])
columnname <- sub("^t", "Time ", columnname)
columnname <- sub("^f", "Frequency ", columnname)
columnname <- gsub("-", " ", columnname)
columnname <- gsub("\\(|\\)", "", columnname)
columnname <- gsub("Body", "Body ", columnname)
columnname <- gsub("Jerk", "Jerk ", columnname)
columnname <- gsub("Acc", " Acceleration ", columnname)
columnname <- gsub("Gyro", "Gyroscope ", columnname)
columnname <- gsub("Mag", "Magnitude ", columnname)
columnname <- gsub("std", "Standard Deviation ", columnname)
columnname <- gsub("  ", " ", columnname)
columnname <- c("Activity", columnname)                         # add activity name to column to match dataframe
colnames(wearable_data) <- columnname

# Question 5. 5.From the data set in step 4, creates a second, independent
# tidy data set with the average of each variable for each activity 
# and each subject.

subject <- rbind(subj_train, subj_test)                         # Create vector with training and test subjects

agg_wear_data <- aggregate(wearable_data[,-1],                  # Aggregate only data columns
                     by = list(Subjects = subject[,1]           # by Subject
                               , Activity = wearable_data[,1]), # by activity
                     FUN = mean, na.rm = TRUE)                  # take the mean and remove NA

# set proper working directory via parent directory
setwd("../")
setwd("~/03. Knowledge/01. Data Science/02.Getting and Cleaning Data/Getting-and-Cleaning-Data-Project")

write.table(agg_wear_data, "Tidy Data Set Q5.txt"
            , row.names = FALSE)                                # write tidy data set to txt



