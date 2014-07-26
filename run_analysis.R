library("plyr")
library("reshape2")

# Load all sets- x_test, x_train, y_test, y_train, subject_test, subject_train
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"", stringsAsFactors=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"", stringsAsFactors=FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"", stringsAsFactors=FALSE)

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"", stringsAsFactors=FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"", stringsAsFactors=FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"", stringsAsFactors=FALSE)

# column bind training set
train_all <- cbind(subject_train,y_train,x_train)
test_all <- cbind(subject_test,y_test,x_test)
x_train <- NULL
y_train <- NULL
subject_train <- NULL
x_test <- NULL
y_test <- NULL
subject_test <- NULL

# Combine main data sets
complete <- rbind(train_all, test_all)
train_all <- NULL
test_all <- NULL

# Load features
features <- read.table("UCI HAR Dataset/features.txt", quote="\"")

# Make names vector
features1 <- as.vector(features$V2)
names1 <- gsub("[[:punct:]]", "", features1)
names1 <- gsub("BodyBody","Body",names1)
names1 <- c("subject","activity",names1)
colnames(complete) <- names1
features <- NULL
features1 <- NULL
names1 <- NULL

#Delete data columns without mean or SD
complete_select <- cbind(complete[,1:2],complete[,grep("mean",names(complete))],complete[,grep("std",names(complete))])
complete <- NULL

# Load activities and name
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
colnames(activity_labels) <- c("activity", "activity_Label")

#Join data and activity's labels
complete_labels <- join(complete_select,activity_labels, by="activity", type="left")
complete_labels <- cbind("subject" = complete_labels[,1], "activity" = complete_labels[,82], complete_labels[,3:81])
complete_select <- NULL
activity_labels <- NULL

# Save names
names2 <- colnames(complete_labels[3:81])

# Take averages
complete_aggregate <- ddply(complete_labels,.(subject,activity), colwise(mean, names2))
complete_labels <- NULL

# Melt into tidy data
average_data <- melt(complete_aggregate,c("subject","activity"),names2)
colnames(average_data)[3:4] <- c("motion","average")
complete_aggregate <- NULL
names2 <- NULL

# average_data is your tidy data set.
