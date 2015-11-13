The Course Project
==================

Author: Sergii Redchyts
sergiy@redchyts.com

Getting and Cleaning Data
-------------------------
Johns Hopkins University via Coursera
[https://www.coursera.org/course/getdata](https://www.coursera.org/course/getdata)

### The purpose of the Project

The purpose of this project is to demonstrate student's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis, notably:
1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

A full description of a sample data set is available here: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Here are the sample data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Code Explanatory 

Code is split to 5 code Blocks following the task described above 

**Block 1.** Merge the training and the test sets to create one data set.
- required libraries are installed (dplyr, tidy)
- both training and test data sets are loaded from proper initial data files
- data from training and test data sets are gathered with bind_rows() function
- data sets are converted into a 'data frame tbl' as a prerequisite of dplyr and tidy libraries
 
**Block 2.** Extracts only the measurements on the mean and standard deviation for each measurement. 
- feature names are loaded from proper initial data files and joint into one descriptive description
- the measures data set is named
- the indices of variables with mean() and std() measures are identified
- the only the measurements on the mean and standard deviation variables are selected from data set

**Block 3.** Uses descriptive activity names to name the activities in the data set
- all activities and their names are loaded from proper initial data file
- the new label data set with activity names decoded is created with mutate() function

**Block 4.** Appropriately labels the data set with descriptive variable names.
- the data set columns are named using descriptive names
- the final tidy data set with both measurements and labels is created
- the final tidy data set is written into the `data_tidy.txt` file

**Block 5.** From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- the tidy data file is sorted by activity and subject variables with arrange() function
- the data in tidy file are grouped by activity and subject with group_by() function 
- average of each variable for each activity and each subject is calculated with summarise_each() function 
- the final tidy data set with means is written into the `data_teady_mean.txt` file

*Variables and data definition are provided in `CodeBook.md` file*