# 0. Prepare
library(plyr)

# 1. Merges the training and the test sets to create one data set.
test_X <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_Y <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test_sbj <- read.table("./UCI HAR Dataset/test/subject_test.txt")

train_X <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_Y <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train_sbj <- read.table("./UCI HAR Dataset/train/subject_train.txt")

X <- rbind(test_X, train_X)
Y <- rbind(test_Y, train_Y)
subject <- rbind(test_sbj, train_sbj)


# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement.
features <- read.table("./UCI HAR Dataset/features.txt")
mean_n_stddev <- grep("(mean|std)\\(\\)", features[,2])

X <- X[, mean_n_stddev]


# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
Y[, 1] <- activities[Y[,1],2]


# 4. Appropriately labels the data set with descriptive variable names.
names(X) <- features[mean_n_stddev, 2]
names(Y) <- "activity"
names(subject) <- "subject"

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
data <- cbind(X, Y, subject)
final_data <- ddply(data, .(subject, activity), function(x) colMeans(x[, 1:66]))


# 6. Write to file (uncomment when it needed)
# write.table(final_data, "final_data.txt", row.name=FALSE)
