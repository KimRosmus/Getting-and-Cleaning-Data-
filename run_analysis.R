## downloading and unzipping file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "cloudfrontdataset.zip")
unzip(zipfile = "cloudfrontdataset.zip", exdir = "./data")

## reading test txt files - X_test, y_test, subject_test
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## reading train txt files - X_train, y_train, subject_train
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## reading activity labels txt file
activitylabels = read.table("./data/UCI HAR Dataset/activity_labels.txt")

## reading features txt file
features = read.table("./data/UCI HAR Dataset/features.txt")

## Setting column names for all txt files read in
colnames(X_test) <- features [,2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"

colnames(X_train) <- features [,2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjectID"

colnames(activitylabels) <- c('activityID', 'activityType')

## merging all data into one set
mrg_test <-cbind(X_test, y_test, subject_test)
mrg_train <-cbind(X_train,y_train, subject_train)
setallinone <- rbind(mrg_test, mrg_test)

## reading colnames, setting mean and std
colnames <- colnames(setallinone)
mean_and_std <- (grepl("activityID", colnames) |
                         grepl("subjectID", colnames) |
                         grepl("mean..", colnames) |
                         grepl("std..", colnames)
)
setformeanandstd <- setallinone[ , mean_and_std == TRUE]

## labeling by activityID
setwithactivitynames <- merge(setformeanandstd, activitylabels,
                              by='activityID',
                              all.x=TRUE)

##second tidy data set
sectidyset <- aggregate(. ~subjectID + activityID, setwithactivitynames, mean)
sectidyset <- sectidyset[order(sectidyset$subjectID, sectidyset$activityID),]

## second tiy data set as txt file
write.table (sectidyset, "sectidyset.txt", row.name = FALSE)
