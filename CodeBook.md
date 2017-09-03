## Information to do this project:
A The full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Process and Variables:
* downloading and unzipping file
* reading test txt files - X_test, y_test, subject_test
  = X_test, y_test, subject_test are data from the downloaded file
* reading train txt files - X_train, y_train, subject_train
  = X_train, y_train, subject_train are data from the downloaded file
* reading activity labels txt file
  = activitylables are data from the downloaed file
* reading features txt file
  = features are data from the downloaded file
* Setting column names for all txt files read in
  = subjectID - The ID of the test subject
  = activityID - The ID of activity performed measurements were taken
* merging all data into one set
  = mrg_test merged X_test, y_test, and activity_test together
  = mrg_train merged X_train, y_train, and activity_train together
  = setallinone merged mrg_test and mrg_train
* reading colnames, setting mean and std
  = mean_and_std was used to make new columns
* labeling by activityID
   = setwithactivitynames merged setformeanandstd and actviity labels
* second tidy data set as txt file
  = sectidyset was written as a txt file

## Measurements:
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* GravityAccMeanY
* GravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* BodyAccJerkMeanZ
* BodyAccJerkStdX
* BodyAccJerkStdY
* BodyAccJerkStdZ
* BodyGyroMeanX
* BodyGyroMeanY
* BodyGyroMeanZ
* tBodyGyroStdX
* BodyGyroStdY
* BodyGyroStdZ
* BodyGyroJerkMeanX
* BodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq 

## Activity Label
* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking upstairs during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking downstairs during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test
