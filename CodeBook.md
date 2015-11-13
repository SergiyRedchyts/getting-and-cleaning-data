The Course Project
==================

Author: Sergii Redchyts
sergiy@redchyts.com

Getting and Cleaning Data
-------------------------
Johns Hopkins University via Coursera
[https://www.coursera.org/course/getdata](https://www.coursera.org/course/getdata)

### The purpose of this CodeBook file

This file describes the variables, the data, and work that was performed to clean up the data

### Initial Data Description 

A full description of a sample data set is available here: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Here are the sample data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Tidy Data Description

**Description.** 
Next manipulations were done with the initial data set:
1. The training and the test sets were merged to create one data set.
2. Descriptive activity names were used to name the activities in the data set.
3. The data set was appropriately labeled with descriptive variable names. 

The result of data cleaning up (`10299 objects of 68 variables`) was stored in the outcome data file `data_tidy.txt`

**Variables.**
Next 68 variables with measurements were received after the clean up of the initial data set and were included in the outcome data file `data_tidy.txt`:

*var# var_name*  
"1" "activity_name"  
"2" "subject_id"  
"3" "1 tBodyAcc-Mean-X"  
"4" "2 tBodyAcc-Mean-Y"  
"5" "3 tBodyAcc-Mean-Z"  
"6" "4 tBodyAcc-StandardDeviation-X"  
"7" "5 tBodyAcc-StandardDeviation-Y"  
"8" "6 tBodyAcc-StandardDeviation-Z"  
"9" "41 tGravityAcc-Mean-X"  
"10" "42 tGravityAcc-Mean-Y"  
"11" "43 tGravityAcc-Mean-Z"  
"12" "44 tGravityAcc-StandardDeviation-X"  
"13" "45 tGravityAcc-StandardDeviation-Y"  
"14" "46 tGravityAcc-StandardDeviation-Z"  
"15" "81 tBodyAccJerk-Mean-X"  
"16" "82 tBodyAccJerk-Mean-Y"  
"17" "83 tBodyAccJerk-Mean-Z"  
"18" "84 tBodyAccJerk-StandardDeviation-X"  
"19" "85 tBodyAccJerk-StandardDeviation-Y"  
"20" "86 tBodyAccJerk-StandardDeviation-Z"  
"21" "121 tBodyGyro-Mean-X"  
"22" "122 tBodyGyro-Mean-Y"  
"23" "123 tBodyGyro-Mean-Z"  
"24" "124 tBodyGyro-StandardDeviation-X"  
"25" "125 tBodyGyro-StandardDeviation-Y"  
"26" "126 tBodyGyro-StandardDeviation-Z"  
"27" "161 tBodyGyroJerk-Mean-X"  
"28" "162 tBodyGyroJerk-Mean-Y"  
"29" "163 tBodyGyroJerk-Mean-Z"  
"30" "164 tBodyGyroJerk-StandardDeviation-X"  
"31" "165 tBodyGyroJerk-StandardDeviation-Y"  
"32" "166 tBodyGyroJerk-StandardDeviation-Z"  
"33" "201 tBodyAccMag-Mean"  
"34" "202 tBodyAccMag-StandardDeviation"  
"35" "214 tGravityAccMag-Mean"  
"36" "215 tGravityAccMag-StandardDeviation"  
"37" "227 tBodyAccJerkMag-Mean"  
"38" "228 tBodyAccJerkMag-StandardDeviation"  
"39" "240 tBodyGyroMag-Mean"  
"40" "241 tBodyGyroMag-StandardDeviation"  
"41" "253 tBodyGyroJerkMag-Mean"  
"42" "254 tBodyGyroJerkMag-StandardDeviation"  
"43" "266 fBodyAcc-Mean-X"  
"44" "267 fBodyAcc-Mean-Y"  
"45" "268 fBodyAcc-Mean-Z"  
"46" "269 fBodyAcc-StandardDeviation-X"  
"47" "270 fBodyAcc-StandardDeviation-Y"  
"48" "271 fBodyAcc-StandardDeviation-Z"  
"49" "345 fBodyAccJerk-Mean-X"  
"50" "346 fBodyAccJerk-Mean-Y"  
"51" "347 fBodyAccJerk-Mean-Z"  
"52" "348 fBodyAccJerk-StandardDeviation-X"  
"53" "349 fBodyAccJerk-StandardDeviation-Y"  
"54" "350 fBodyAccJerk-StandardDeviation-Z"  
"55" "424 fBodyGyro-Mean-X"  
"56" "425 fBodyGyro-Mean-Y"  
"57" "426 fBodyGyro-Mean-Z"  
"58" "427 fBodyGyro-StandardDeviation-X"  
"59" "428 fBodyGyro-StandardDeviation-Y"  
"60" "429 fBodyGyro-StandardDeviation-Z"  
"61" "503 fBodyAccMag-Mean"  
"62" "504 fBodyAccMag-StandardDeviation"  
"63" "516 fBodyBodyAccJerkMag-Mean"  
"64" "517 fBodyBodyAccJerkMag-StandardDeviation"  
"65" "529 fBodyBodyGyroMag-Mean"  
"66" "530 fBodyBodyGyroMag-StandardDeviation"  
"67" "542 fBodyBodyGyroJerkMag-Mean"  
"68" "543 fBodyBodyGyroJerkMag-StandardDeviation"  

### Cleaned Data Description

**Description.** 
Next manipulations were done with the tidy data set described above:
1. Only the measurements on the mean and standard deviation for each measurement were selected from the tidy data set. 
2. The independent tidy data set with the average of each variable for each activity and each subject was created from the data set received in step 1.

The result of data cleaning up (`180 objects of 68 variables`) was stored in the outcome data file `data_tidy.txt`

**Variables.** 
The same 68 variables with the mean and standard deviation for each measurement were received after the clean up of the tidy data set and were included in the outcome data file `data_tidy_mean.txt`
