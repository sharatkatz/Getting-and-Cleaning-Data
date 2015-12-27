# run_analysis.R

# initialize
library(reshape2)
library(dplyr)

# Download and unzip files from the Url
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file (fileUrl, destfile = "./UCI.zip")
unzip ("UCI.zip")


# Object of all the text files to read
XTrainDat   <- "X_train.txt"
XTestDat    <- "X_test.txt"
yTrainDat   <- "y_train.txt"
yTestDat    <- "y_test.txt"
featuresDat <- "features.txt"
subject_trainDat <- "subject_train.txt"
subject_testDat <- "subject_test.txt"
activity_labelsDat <- "activity_labels.txt"

# unzipped folder name
downloaded_dir <- "UCI HAR Dataset"

# Import function
readTable <- function (fileP, fileN, txtfile) {
    p <- file.path (downloaded_dir, fileP, txtfile)
    fileN <- read.table (p, stringsAsFactors = F, na.strings = c("NA",""))
}


# Import train, test, feature, subject and activity label files
# Ignoring train and test files inside Inertial Signals folder
xtrain   <- readTable ( "train", xtrain,   XTrainDat   )
ytrain   <- readTable ( "train", ytrain,   yTrainDat   )
xtest    <- readTable ( "test" , xtest,    XTestDat    )
ytest    <- readTable ( "test" , ytest,    yTestDat    )
features <- readTable ( "."    ,features,  featuresDat )
subject_train <- readTable ( "train", subject_train, subject_trainDat )
subject_test  <- readTable ( "test" , subject_test,  subject_testDat  )
activity_labels <- readTable (".", activity_labels, activity_labelsDat)

# Set the column names
names(xtest) <- names(xtrain) <- features[ ,2]
names(subject_test) <- names(subject_train) <- "Subject_ID"
names(ytest) <- names(ytrain) <- "Activity_ID"


# 1. Merges the training and the test sets to create one data set
bindx <- rbind(xtrain, xtest)
bindy <- rbind(ytrain, ytest)
bindSubj <- rbind(subject_train, subject_test)


# 2. Extracts only the measurements on the mean and standard 
#    deviation for each measurement
bindx <- bindx[, grep("-(mean|std)\\(\\)", tolower(names(bindx)))]
dataElements <- cbind(bindy, bindSubj, bindx)


# 3. Uses descriptive activity names to name the activities 
#    in the data set
names(activity_labels) <- c("Activity_ID", "Activity_Label")


# 4. Appropriately labels the data set with descriptive variable names
bindActivity1 <- merge(activity_labels, dataElements,  by="Activity_ID")
write.table(bindActivity1, file = "./tidy_data1.txt", row.names = F)

# 5. Independent tidy data set with the average of each variable for each activity and each subject
bindActivity2 <- tbl_df(bindActivity1) %>% 
            group_by(Activity_ID, Activity_Label, Subject_ID) %>% 
         summarise_each(funs(mean))
write.table(bindActivity2, file = "./tidy_data2.txt", row.names = F)

