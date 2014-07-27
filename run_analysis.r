#Setting the working dir to the project dir to perform reading of files. 
setwd("C:/Users/rachit.kulshrestha/Personal/Courses/Getting and Cleaning Data/")


#Reading all data file in the Data folder to work on the cleaning of these files.
training = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
training[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
training[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

testing = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
testing[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
testing[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

# Commant to merge training and test data together into commonData
commonData = rbind(training, testing)
#Test to display this data - remove code later. 

# Read Available features and edit the Feature names to perform cleaning

features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])


# Get only the data on mean and std. dev. and store it as colsReg - required number of columns.
colsReq <- grep(".*Mean.*|.*Std.*", features[,2])

# First reduce the features table to the required columns as defined by "colsReq"
features <- features[colsReq,]

# Add the last two columns "subject" and "activity"
colsReq <- c(colsReq, 562, 563)

# Remove the unwanted columns from commonData
commonData <- commonData[,colsReq]

# Add the column names (features) to commonData
colnames(commonData) <- c(features$V2, "Activity", "Subject")
colnames(commonData) <- tolower(colnames(commonData))

currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
  commonData$activity <- gsub(currentActivity, currentActivityLabel, commonData$activity)
  currentActivity <- currentActivity + 1
}

commonData$activity <- as.factor(commonData$activity)
commonData$subject <- as.factor(commonData$subject)

cleanData = aggregate(commonData, by=list(activity = commonData$activity, subject=commonData$subject), mean)
# Remove the subject and activity column,

cleanData[,90] = NULL
cleanData[,89] = NULL

# Write the tidy data into the file cleanData.txt and store in the working dir
# add "\t" to make it tab deliminated.

write.table(cleanData, "cleanData.txt", sep="\t")
