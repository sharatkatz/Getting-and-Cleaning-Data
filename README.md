# Getting-and-Cleaning-Data-CourseProject
This is the course project for the Getting and Cleaning Data Coursera course. Repository contains R script run_analysis.R, which carried out following steps:

1. Load 'reshape2' and 'dplyr' libraries. Download and unzip files inside folder from URL specified.

2. Import train, test, feature, subject and activity label files ignoring train and test files inside Inertial Signals folder.

3. Merge train and test dataset, of x(right hand side of SVM) and y(left hand side of SVM), to create one single dataset. 

4. Get only Mean and Standard Deviation of the measurements. This is done by identifying variable strings having '-mean()' or '-std()' substrings. 

5. Column bind subjects to measurements (mean() & std()) and y's.

6. Activity labels text file is supplied with appropriate column names.

7. Apply lables from step6 (to all y's) to dataset from step5.

8. Get independent tidy data set with the average of each variable for each activity and each subject and export as file - 'tidy_data2.txt'.
