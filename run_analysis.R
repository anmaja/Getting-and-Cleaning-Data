
##1 Merge the training and the test sets to create one 
##  data set.

# Printing a message to console, this script takes a while!
print("--- Please wait: running R script ---", quote = F)
# setting WD to the unzipped data folder
setwd("UCI HAR Dataset")
# Reading train & test datasets
x_train<-read.table("train/X_train.txt")
x_test<-read.table("test/X_test.txt")
# joining train & test datasets
x_joined <- rbind(x_train, x_test)
# naming the comlumns of the joined dataset
names<-read.table("features.txt")
colnames(x_joined)<-names$V2

#remove unnecessary files
rm(x_test,x_train,names)

## -------------------------------------------------------------
##2 Extract only the measurements on the mean and standard 
##  deviation for each measurement. 

# join subjects of train & test 
subjects<-c(readLines("train/subject_train.txt"),
readLines("test/subject_test.txt"))
# make a new table with 1st column subject number
x_mean_std<-as.data.frame(subjects,colnames("subjects"))
# Read in the means & standard deviations of the joined dataset
means<-subset(x_joined, select=c(grep("mean()", 
colnames(x_joined), fixed=TRUE, value=TRUE)))
std<-subset(x_joined, select=c(grep("std()", 
colnames(x_joined), fixed=TRUE, value=TRUE)))
# combining everything into one dataset
x_mean_std <- cbind(x_mean_std,means, std)
# remove unnecessary files
rm(means,std,subjects)
rm(x_joined)

## -------------------------------------------------------------
##3 Use descriptive activity names to name the activities 
##  in the data set
## gooi test & train y in 1 lange vector, en 
## merge met de tabel(cbind) met kopje 'activity' erboven
## cbind als factor met de activity als value of factor
## maak de factors in de values

# join activities of train & test 
activity<-c(readLines("train/y_train.txt"),readLines("test/y_test.txt"))
activity_labels = read.table(file="activity_labels.txt", 
stringsAsFactors=FALSE)
# Replace activity values to descriptive names
activity = factor(activity, labels=activity_labels$V2)
# Add descriptive activity names to the dataset
x_mean_std <- cbind(x_mean_std,activity)
# remove unnecessary files
rm(activity,activity_labels)

## -------------------------------------------------------------
##4 Appropriately labels the data set with descriptive 
##  variable names. 

# Replace unwanted characters to create descriptive variable names
colnames(x_mean_std)<-gsub("\\(\\)", "",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("^t", "Time.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("^f", "Frequency.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("BodyBody", "Body",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Body", "Body.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Acc", "Acceleration.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Gyro", "Gyroscope.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Mag", "Magnitude.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Jerk", "Jerk.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Gravity", "Gravity.",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("-", " ",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("std", "standard deviation",colnames(x_mean_std))
colnames(x_mean_std)<-gsub("X", "X-axis", fixed=TRUE, colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Y", "Y-axis", fixed=TRUE, colnames(x_mean_std))
colnames(x_mean_std)<-gsub("Z", "Z-axis", fixed=TRUE, colnames(x_mean_std))
# write the resulting dataset to a file
write.csv(x_mean_std, file="Total_Dataset.txt")

## -------------------------------------------------------------
##5 Create a second, independent tidy data set with the 
##  average of each variable for each activity and each subject.

# load needed library
library(reshape2)
# create a summary dataset, containing the average of each variable for each activity and each subject.
molten<-melt(x_mean_std, id.vars=c("subjects", "activity"))
tidy<-dcast(molten, subjects + activity ~ variable, mean)
# remove unnecessary files
rm(molten)
rm(x_mean_std)
# write the resulting dataset to a file
write.csv(tidy, file="averages.txt")
# remove unnecessary files
rm(tidy)
#setting the working directory back
setwd("..")
