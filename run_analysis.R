## This script does the following:
## Block 1. Merges the training and the test sets to create one data set.
## Block 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## Block 3. Uses descriptive activity names to name the activities in the data set.
## Block 4. Appropriately labels the data set with descriptive variable names. 
## Block 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## 
## Pls find more datails in the next files attached:
## Annex 1. README.md - explains how all of the scripts work and how they are connected.  
## Annex 2. CodeBook.md - describes the variables, the data, and any transformations or work that was performed to clean up the data. 
     
## Block 1. Merges the training and the test sets to create one data set.

        # install.packages("dplyr")
        # install.packages("tidyr")
        # call libraries
        library(dplyr)
        library(tidyr)

        # loads training data set
        subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")  
        X_train = read.table("UCI HAR Dataset/train/X_train.txt")  
        Y_train = read.table("UCI HAR Dataset/train/Y_train.txt") 

        # loads test data set
        subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")  
        X_test = read.table("UCI HAR Dataset/test/X_test.txt")  
        Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")  

        # gathers data from training and test data sets
        subject_gathered <- bind_rows(subject_train, subject_test) 
        X_gathered <- bind_rows(X_train, X_test)
        Y_gathered <- bind_rows(Y_train, Y_test)  
        
        # loads the data into a 'data frame tbl'
        subject_gathered <- tbl_df(subject_gathered)
        X_gathered <- tbl_df(X_gathered)
        Y_gathered <- tbl_df(Y_gathered)

                
## Block 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

        # gets all feature names
        features <- read.table("UCI HAR Dataset/features.txt", col.names=c("feature_id", "feature_name"))
        features <- paste(features$feature_id, features$feature_name)
    
        # names X data set columns using features names
        names(X_gathered) <- features
        
        # finds indices of only the measurements on the mean and standard deviation
        indices <- grep("mean\\(\\)|std\\(\\)", features)
        
        # extracts only the measurements on the mean and standard deviation to the data set X
        X <- select(X_gathered, indices)

                
## Block 3. Uses descriptive activity names to name the activities in the data set
        
        # gets all activities and their names
        activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name")) 
        
        # names Y_gathered data set column using descriptive names
        names(Y_gathered) = "label" 
        
        # creates the new label data set with activity names decoded
        Y <- mutate(Y_gathered, activity_name = activities$activity_name[Y_gathered$label])
        

## Block 4. Appropriately labels the data set with descriptive variable names.
        
        #names X data set columns using descriptive names
        features <- gsub("mean\\(\\)", "Mean", names(X))
        features <- gsub("std\\(\\)", "StandardDeviation", features)
        names(X) <- features
        
        # names subject_gathered data set columns using descriptive names
        names(subject_gathered) <- "subject_id"
        
        # creates final data set with both measurements and labels
        data_tidy <- bind_cols(as.data.frame(Y$activity_name), as.data.frame(subject_gathered), X) 
        names(data_tidy)[1:2] <- c("activity_name","subject_id")
        
        # write data_tidy into the file
        write.table(data_tidy, "data_tidy.txt", row.name=FALSE)         
        
        
## Block 5. From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.

        data_tidy_mean <- data_tidy %>%
                arrange(activity_name, subject_id) %>% # sorts data by activity and subject
                group_by(activity_name, subject_id) %>% # group data by activity and subject
                summarise_each(funs(mean), -activity_name, -subject_id) # calculates average of each variable for each activity and each subject
        
        # write data_tidy_mean into the file
        write.table(data_tidy_mean, "data_tidy_mean.txt", row.name=FALSE) 