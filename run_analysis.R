##DONT FORGET TO SET THE PROPER DIRECTORY

# RUN

library(dplyr)
library(tidyr)
library(lubridate)


# Working with tests files

y_test<-read.table("./test/y_test.txt",header = FALSE,sep="")
x_test<-read.table("./test/X_test.txt",header = FALSE,sep="")
subject_test<-read.table("./test/subject_test.txt",header = FALSE,sep="")
features<-read.table("./features.txt",header = FALSE,sep="")
ColNames<-features$V2
colnames(x_test)<-ColNames
colnames(y_test)[1]<-"activity_labels"
colnames(subject_test)[1]<-"subject_labels"

# Generating test data-frame
test_df<-bind_cols(subject_test,y_test,x_test)

# Working with train files

y_train<-read.table("./train/y_train.txt",header = FALSE,sep="")
x_train<-read.table("./train/X_train.txt",header = FALSE,sep="")
subject_train<-read.table("./train/subject_train.txt",header = FALSE,sep="")
colnames(x_train)<-ColNames
colnames(y_train)[1]<-"activity_labels"
colnames(subject_train)[1]<-"subject_labels"

# Generating train data-frame
train_df<-bind_cols(subject_train,y_train,x_train)

#Combining the data-frames
binded_df<-bind_rows(test_df,train_df)

#Selecting only mean and std columns

selected_df<-select(binded_df,contains("labels"),contains("mean()"),contains("std()"))

# Changing activity labels
for(i in (1:length(selected_df$activity_labels))){
  if(selected_df$activity_labels[i]==1) selected_df$activity_labels[i]="WALKING"
  if(selected_df$activity_labels[i]==2) selected_df$activity_labels[i]="WALKING_UPSTAIRS"
  if(selected_df$activity_labels[i]==3) selected_df$activity_labels[i]="WALKING DOWNSTAIRS"
  if(selected_df$activity_labels[i]==4) selected_df$activity_labels[i]="SITTING"
  if(selected_df$activity_labels[i]==5) selected_df$activity_labels[i]="STANDING"
  if(selected_df$activity_labels[i]==6) selected_df$activity_labels[i]="LAYING"
}

# Descriptive column names

descriptive_colnames<-colnames(selected_df)[3:68]
descriptive_colnames<-gsub("mean","Mean",descriptive_colnames)
descriptive_colnames<-gsub("std","Std",descriptive_colnames)
descriptive_colnames<-gsub("[()]","",descriptive_colnames)
descriptive_colnames<-gsub("[-]","",descriptive_colnames)
colnames(selected_df)[3:68]<-descriptive_colnames

#
tidy_data<-tbl_df(selected_df)
tidy_data<-arrange(tidy_data,subject_labels)

tidy_data<-tidy_data %>% group_by(subject_labels,activity_labels) %>% summarise_all(mean)
write.csv(tidy_data,"./tidy_data.csv",row.names = FALSE)


