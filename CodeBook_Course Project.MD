## Code Book Getting-and-Cleaning-Data-Project
=================================
Daan Hoevers
Amsterdam 21 Sept 2014

This code book describes the variables, the data, and any transformations or work that you performed to clean up the data for the course project of the Data Science Specialization course Getting and Cleaning Data.

### Variables and data
The data source is coming from the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone

The data for the course can be found here <a https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <a/>

From this zip files the following files were downloaded and used

* X_test.txt
* Y_test.txt
* features.txt
* activity_labels.txt
* y_train.txt
* x_test.txt
* subject_train.txt
* subject_test.txt

The train and test files represents respectively 70% and 30% of the 30 recorded subjects.

The important features, i.e. variables, are described in the features_info.txt

### Summary of choices
This section desribes the most eminent choices that I made when constucting the data set

* the first choice was to merge the test and train raw data data sets
* for question 2, it was decided to only include mean() and std() and omitting meanFreq() variables
* for question 5, I choose to write out the variable names to come up with proper columns names
* the aggregate function was used to aggregate the data by subject and activity


### Transformations
Transformations done to create the tidy data set:

* Row bind the train and test data set
* Extract only mean() and std() columns
* Add activity labels data set
* Write out the variable names to proper column names
* Add subjects to data and aggregate the mean of each variable by subject and activity

### Tidy Data Set variables

* Subjects
* Activity
* Time Body Acceleration mean X
* Time Body Acceleration mean Y
* Time Body Acceleration mean Z
* Time Body Acceleration Standard Deviation X
* Time Body Acceleration Standard Deviation Y
* Time Body Acceleration Standard Deviation Z
* Time Gravity Acceleration mean X
* Time Gravity Acceleration mean Y
* Time Gravity Acceleration mean Z
* Time Gravity Acceleration Standard Deviation X
* Time Gravity Acceleration Standard Deviation Y
* Time Gravity Acceleration Standard Deviation Z
* Time Body Acceleration Jerk mean X
* Time Body Acceleration Jerk mean Y
* Time Body Acceleration Jerk mean Z
* Time Body Acceleration Jerk Standard Deviation X
* Time Body Acceleration Jerk Standard Deviation Y
* Time Body Acceleration Jerk Standard Deviation Z
* Time Body Gyroscope mean X
* Time Body Gyroscope mean Y
* Time Body Gyroscope mean Z
* Time Body Gyroscope Standard Deviation X
* Time Body Gyroscope Standard Deviation Y
* Time Body Gyroscope Standard Deviation Z
* Time Body Gyroscope Jerk mean X
* Time Body Gyroscope Jerk mean Y
* Time Body Gyroscope Jerk mean Z
* Time Body Gyroscope Jerk Standard Deviation X
* Time Body Gyroscope Jerk Standard Deviation Y
* Time Body Gyroscope Jerk Standard Deviation Z
* Time Body Acceleration Magnitude mean
* Time Body Acceleration Magnitude Standard Deviation 
* Time Gravity Acceleration Magnitude mean
* Time Gravity Acceleration Magnitude Standard Deviation 
* Time Body Acceleration Jerk Magnitude mean
* Time Body Acceleration Jerk Magnitude Standard Deviation 
* Time Body Gyroscope Magnitude mean
* Time Body Gyroscope Magnitude Standard Deviation 
* Time Body Gyroscope Jerk Magnitude mean
* Time Body Gyroscope Jerk Magnitude Standard Deviation 
* Frequency Body Acceleration mean X
* Frequency Body Acceleration mean Y
* Frequency Body Acceleration mean Z
* Frequency Body Acceleration Standard Deviation X
* Frequency Body Acceleration Standard Deviation Y
* Frequency Body Acceleration Standard Deviation Z
* Frequency Body Acceleration Jerk mean X
* Frequency Body Acceleration Jerk mean Y
* Frequency Body Acceleration Jerk mean Z
* Frequency Body Acceleration Jerk Standard Deviation X
* Frequency Body Acceleration Jerk Standard Deviation Y
* Frequency Body Acceleration Jerk Standard Deviation Z
* Frequency Body Gyroscope mean X
* Frequency Body Gyroscope mean Y
* Frequency Body Gyroscope mean Z
* Frequency Body Gyroscope Standard Deviation X
* Frequency Body Gyroscope Standard Deviation Y
* Frequency Body Gyroscope Standard Deviation Z
* Frequency Body Acceleration Magnitude mean
* Frequency Body Acceleration Magnitude Standard Deviation 
* Frequency Body Body Acceleration Jerk Magnitude mean
* Frequency Body Body Acceleration Jerk Magnitude Standard Deviation 
* Frequency Body Body Gyroscope Magnitude mean
* Frequency Body Body Gyroscope Magnitude Standard Deviation 
* Frequency Body Body Gyroscope Jerk Magnitude mean
* Frequency Body Body Gyroscope Jerk Magnitude Standard Deviation 

