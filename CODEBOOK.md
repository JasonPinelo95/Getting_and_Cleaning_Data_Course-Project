# Getting_and_Cleaning_Data_Course-Project

# Raw Data

* Raw Data was obtained from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Once you extract the files, you will see a README.txt file, including the descriptions of each file so you can understand what they contain.
* A better description of the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
* Make sure you understand the data so you can understand the modifications described below.

# Modifications

## After running the R script provided in this repository, the resulting dataset will have the next modifications:

* Both the train and test datasets will be joined in one dataframe, including the subjects and activity columns.
* Only the mean and std measurements for each feature will be conserved.
* Instead of havind the number of activity in the activity col, it will have the name of the activity.
* The features will be renamed, excluding the non AlphaNumeric Characters.
* The final dataset will have he average of each variable for each activity and each subject, for the sake of the tidiness.


# Descriptions

## Identififiers
The first two columns are Identifiers.
* Subject: the ID of the Subject, 30 subjects in total
* Activity: the Name of the Activity performed by the subject, 6 categories in total. 

## Features
You can see the complete measurement list, provided in the zip I mentioned before, even though I put below the complete name list I included in the final tidy data set, in short, the values were measured by sensors in the cellphones, the Samsung Galaxy S to be specific. 66 features in total.

*            tBodyAccMeanX
*            tBodyAccMeanY
*            tBodyAccMeanZ
*         tGravityAccMeanX
*         tGravityAccMeanY
*         tGravityAccMeanZ
*        tBodyAccJerkMeanX
*        tBodyAccJerkMeanY
*        tBodyAccJerkMeanZ
*           tBodyGyroMeanX
*           tBodyGyroMeanY
*           tBodyGyroMeanZ
*       tBodyGyroJerkMeanX
*       tBodyGyroJerkMeanY
*       tBodyGyroJerkMeanZ
*          tBodyAccMagMean
*       tGravityAccMagMean
*      tBodyAccJerkMagMean
*         tBodyGyroMagMean
*     tBodyGyroJerkMagMean
*            fBodyAccMeanX
*            fBodyAccMeanY
*            fBodyAccMeanZ
*        fBodyAccJerkMeanX
*        fBodyAccJerkMeanY
*        fBodyAccJerkMeanZ
*           fBodyGyroMeanX
*           fBodyGyroMeanY
*           fBodyGyroMeanZ
*          fBodyAccMagMean
*  fBodyBodyAccJerkMagMean
*     fBodyBodyGyroMagMean
* fBodyBodyGyroJerkMagMean
*             tBodyAccStdX
*             tBodyAccStdY
*             tBodyAccStdZ
*          tGravityAccStdX
*          tGravityAccStdY
*          tGravityAccStdZ
*         tBodyAccJerkStdX
*         tBodyAccJerkStdY
*         tBodyAccJerkStdZ
*            tBodyGyroStdX
*            tBodyGyroStdY
*            tBodyGyroStdZ
*        tBodyGyroJerkStdX
*        tBodyGyroJerkStdY
*        tBodyGyroJerkStdZ
*           tBodyAccMagStd
*        tGravityAccMagStd
*       tBodyAccJerkMagStd
*          tBodyGyroMagStd
*      tBodyGyroJerkMagStd
*             fBodyAccStdX
*             fBodyAccStdY
*             fBodyAccStdZ
*         fBodyAccJerkStdX
*         fBodyAccJerkStdY
*         fBodyAccJerkStdZ
*            fBodyGyroStdX
*            fBodyGyroStdY
*            fBodyGyroStdZ
*           fBodyAccMagStd
*   fBodyBodyAccJerkMagStd
*      fBodyBodyGyroMagStd
*  fBodyBodyGyroJerkMagStd
