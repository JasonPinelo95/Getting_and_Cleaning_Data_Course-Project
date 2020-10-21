# Getting and Cleaning Data Course-Project

* This repository includes the files belonging to the final project of Getting and Cleaning Data from Coursera: https://www.coursera.org/learn/data-cleaning
* Before running the script make sure you have set the working directory properly.
* The included R script, `run_analysis.R`, performs the following:

1. Generates both train and test dataframes from Raw Data and merge them in a single data frame called `binded_df`.
2. From `binded_df`, it selects only the `mean()` and `std()` columns and store the resulting data frama in a `selected_df`.
3. Changes the `activity_labels` column content for descriptive names instead of numbers.
4. Changes the feature columns names to be more readable.
5. Creates independent tidy data set with the average of each variable for each activity and each subject, stores the result in a variable called `tidy_data`.
6. Export the tidy data data set to a csv file called `tidy_data.csv`in the current working directory.


