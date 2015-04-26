# This R-scripts reads and tidies the Samsung data set
# and writes a summary csv file containing means of the original data

############
# Read files
############

features <- read.csv("UCI HAR Dataset/features.txt", header = FALSE, sep = "")
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")

train_subject <- read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
train_x <- read.csv("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
train_y <- read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")

test_subject <- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
test_x <- read.csv("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
test_y <- read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")


################################
# Merge test and train data sets
################################

subject <- rbind(train_subject, test_subject)
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)


##########################
# Keep only means and stds
##########################

# Select only mean and standard deviation features by selecting feature names 
# that contain strings "mean()" or "std()"
meansandstds  <- sort( union( grep("mean()", features[,2], fixed = TRUE), 
                              grep("std()", features[,2], fixed = TRUE ) ) )

#Keep only mean and standard deviation columns
x <- x[,meansandstds]


##################
# Set column names
##################

# Add feature names as column names
names(x) <- features[meansandstds,2]

# Replace the abbreviations in the feature names with full words
names(x) <- gsub("^t", "Time", names(x) )
names(x) <- gsub("^f", "Frequency", names(x) )
names(x) <- gsub("Acc", "Accelerometer", names(x) )
names(x) <- gsub("Gyro", "Gyroscope", names(x) )
names(x) <- gsub("Mag", "Magnitude", names(x) )
names(x) <- gsub("-mean()", "Mean", names(x), fixed = TRUE )
names(x) <- gsub("-std()", "Std", names(x), fixed = TRUE )
# Remove hyphens
names(x) <- gsub("-", "", names(x), fixed = TRUE )

# Add column names
names(y) <- "Activity"
names(subject)  <- "Subject"
names(activity_labels)  <- c("ActivityNumber", "ActivityName" )

################################
# Merge data into one data frame
################################
tidydata <- cbind(subject, y, x)


#############################
# Convert integers to factors
#############################
tidydata$Subject <- factor( tidydata$Subject )
tidydata$Activity <- factor( tidydata$Activity )

# Set factor level names for activities
levels(tidydata$Activity) <- activity_labels[,"ActivityName"]

# Create the smaller data set with means
require(data.table)
datatable <- data.table(tidydata)
#Add "Mean" to column names
names(datatable)[3:68] <- paste("Mean",  names(datatable)[3:68], sep="")
#Calculate the means by subject and activity
tidymeansdata <- datatable[,lapply(.SD,mean), by=list(Subject,Activity) ]

# Write the data to a csv file
write.table(tidymeansdata,"means.txt",row.names=FALSE)
