install.packages("dplyr")
library(dplyr)
install.packages("reshape2")
library(reshape2)


#Read Train data
train_data <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

# test for NA
any(is.na(train_data))


#Read Test data 
test_data <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

# test for NA
any(is.na(test_data))

#Read activity labels, features list, train labels, test labels, test subjects, and train subjects
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE,stringsasFactors=FALSE)

features_list <- read.table("UCI HAR Dataset/features.txt", header = FALSE,stringsAsFactors = FALSE)
str(features_list)

train_labels <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)


test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

#Cbind test and train with label
test_data_lbl<-cbind(test_labels,test_data)

train_data_lbl<-cbind(train_labels,train_data)

#Combine test and train data using rbind
data_full<-rbind(test_data_lbl,train_data_lbl)

#CREATE feature vector with only second column before adding as header
features_vect <- features_list[,2]

#Add Header(from feature list) to the combined full data set
names(data_full)[2:562] <-as.character(features_vect)
#Test for duplicate column and eliminate them
data_full_uniq <- data_full[ , !duplicated(colnames(data_full))]

#Change the first column name to activity

colnames(data_full_uniq)[1]<-"activity"

#Use grep to get only column name ending with mean() and std()
feature_list_mean<-grep("mean()", features_vect, value=TRUE, fixed=TRUE)
feature_list_std<-grep("std()", features_vect, value=TRUE, fixed=TRUE)

feature_mean_std<-c("activity",feature_list_std,feature_list_mean)

#Subset of mean() and std() columns only
data_subset <- data_full_uniq[feature_mean_std]
#rbind test and train subjects
subjects<-rbind(test_subjects,train_subjects)


#Cbind subjects to data_subset
data_subset_subj_activity<-cbind(subjects,data_subset)


#Rename colname to to subjects
colnames(data_subset_subj_activity)[1]<-"subject"

#Substituting activity name in dataset
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 1]  <- "WALKING"
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 5]  <- "STANDING"
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 2]  <- "WALKING_UPSTAIRS"
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 3]  <- "WALKING_DOWNSTAIRS"
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 4]  <- "SITTING"
data_subset_subj_activity$activity[data_subset_subj_activity$activity == 6]  <- "LAYING"

# Reshape data using melt - use subject and activity as id and rest as measurement variables
data_tidy <- melt(data=data_subset_subj_activity, id = c("subject","activity"),measure.vars = colnames(data_subset_subj_activity[,3:68]))
# Shape the tidy data set in narrow manner -180x68-with 66 variables applied mean function
data_tidy2 <- dcast(data_tidy,subject+activity ~ variable, mean)
# Finally writing the tidy data set to a file locally
write.table(data_tidy2,file="FinalTidyDataSet.txt",row.names=FALSE)
