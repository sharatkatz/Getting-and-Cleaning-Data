# Code Book for run_analysis.R
There are three pieces of information required - 
a. Subjects
b. Features
c. Classifications

Subjects(1-30) are those on which experiment was carried out recording measurements/features via a smartphone, which could be used for classification of position as: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING. This was labled with the help of video recording.

So, to bring all the data together first the training and test portions were identified and stacked as one piece.
train and test were bound as rbind and x, y and subjects were cbind after selecting only means and standard deviations among all features (x).

Activities in above data was labeled using a reference table in file - 'activity_labels.txt'.

Then mean of selected features was taken for each subject falling under each activity.

