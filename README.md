## Getting-and-Cleaning-Data-Project
=================================
Daan Hoevers
Amsterdam 21 Sept 2014

### Course Project Getting and Cleaning Read Me

The following transformation techniques were used to complete the course project assignment of the Data Science Specialization Course Getting and Cleaning Data. 

### prework

* download.file() to download the data
* unzip() to unzip the file
* read.table() to read the different files into R

### question 1
For question 1, the train (70%) and the test (30%) of the data were merged using merge()

### question 2
Only the mean and std variables were selected. The meanFreq() columns were not considered to be a mean in line with the question, so they were omitted. To determine the position of the applicable columns, the grep() function was used. These positions were used to subset the data.

### question 3
The activity names for the train and test test were binded, set to factors and next added to the data frame.

### question 4
Using the gsub() and sub() functions the names of the variables were transformed into readable columnnames

### question 5 
With the aggregate() function the average (i.e. mean) of the variables were taken and written with write.table() to a tidy data set.