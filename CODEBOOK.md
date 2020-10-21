# Getting_and_Cleaning_Data_Course-Project

# Raw Data

Raw Data was obtained from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Once you extract the files, you will see a README.txt file, including the descriptions of each file so you can understand what they contain.
A better description of the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
Make sure you understand the data so you can understand the modifications described below.

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

1             tBodyAccMeanX
2             tBodyAccMeanY
3             tBodyAccMeanZ
4          tGravityAccMeanX
5          tGravityAccMeanY
6          tGravityAccMeanZ
7         tBodyAccJerkMeanX
8         tBodyAccJerkMeanY
9         tBodyAccJerkMeanZ
10           tBodyGyroMeanX
11           tBodyGyroMeanY
12           tBodyGyroMeanZ
13       tBodyGyroJerkMeanX
14       tBodyGyroJerkMeanY
15       tBodyGyroJerkMeanZ
16          tBodyAccMagMean
17       tGravityAccMagMean
18      tBodyAccJerkMagMean
19         tBodyGyroMagMean
20     tBodyGyroJerkMagMean
21            fBodyAccMeanX
22            fBodyAccMeanY
23            fBodyAccMeanZ
24        fBodyAccJerkMeanX
25        fBodyAccJerkMeanY
26        fBodyAccJerkMeanZ
27           fBodyGyroMeanX
28           fBodyGyroMeanY
29           fBodyGyroMeanZ
30          fBodyAccMagMean
31  fBodyBodyAccJerkMagMean
32     fBodyBodyGyroMagMean
33 fBodyBodyGyroJerkMagMean
34             tBodyAccStdX
35             tBodyAccStdY
36             tBodyAccStdZ
37          tGravityAccStdX
38          tGravityAccStdY
39          tGravityAccStdZ
40         tBodyAccJerkStdX
41         tBodyAccJerkStdY
42         tBodyAccJerkStdZ
43            tBodyGyroStdX
44            tBodyGyroStdY
45            tBodyGyroStdZ
46        tBodyGyroJerkStdX
47        tBodyGyroJerkStdY
48        tBodyGyroJerkStdZ
49           tBodyAccMagStd
50        tGravityAccMagStd
51       tBodyAccJerkMagStd
52          tBodyGyroMagStd
53      tBodyGyroJerkMagStd
54             fBodyAccStdX
55             fBodyAccStdY
56             fBodyAccStdZ
57         fBodyAccJerkStdX
58         fBodyAccJerkStdY
59         fBodyAccJerkStdZ
60            fBodyGyroStdX
61            fBodyGyroStdY
62            fBodyGyroStdZ
63           fBodyAccMagStd
64   fBodyBodyAccJerkMagStd
65      fBodyBodyGyroMagStd
66  fBodyBodyGyroJerkMagStd
