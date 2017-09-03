# Getting-and-Cleaning-Data-
Coursera Course 3 Week 4

In the script you will find:

* downloading and unzipping file
* reading test txt files - X_test, y_test, subject_test = X_test, y_test, subject_test are data from the downloaded file
* reading train txt files - X_train, y_train, subject_train = X_train, y_train, subject_train are data from the downloaded file
* reading activity labels txt file = activitylables are data from the downloaed file
* reading features txt file = features are data from the downloaded file
* Setting column names for all txt files read in = subjectID - The ID of the test subject = activityID - The ID of activity performed measurements were taken
* merging all data into one set = mrg_test merged X_test, y_test, and activity_test together = mrg_train merged X_train, y_train, and activity_train together = setallinone merged mrg_test and mrg_train
* reading colnames, setting mean and std = mean_and_std was used to make new columns
* labeling by activityID = setwithactivitynames merged setformeanandstd and actviity labels
* second tidy data set as txt file = sectidyset was written as a txt file
