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

Measures for which mean was calculated are:

1	tBodyAcc-mean()-X	;

2	tBodyAcc-mean()-Y	;

3	tBodyAcc-mean()-Z	;

4	tBodyAcc-std()-X	;

5	tBodyAcc-std()-Y	;

6	tBodyAcc-std()-Z	;

7	tGravityAcc-mean()-X	;

8	tGravityAcc-mean()-Y	;

9	tGravityAcc-mean()-Z	;

10	tGravityAcc-std()-X	;

11	tGravityAcc-std()-Y	;

12	tGravityAcc-std()-Z	;

13	tBodyAccJerk-mean()-X	;

14	tBodyAccJerk-mean()-Y	;

15	tBodyAccJerk-mean()-Z	;

16	tBodyAccJerk-std()-X	;

17	tBodyAccJerk-std()-Y	;

18	tBodyAccJerk-std()-Z	;

19	tBodyGyro-mean()-X	;

20	tBodyGyro-mean()-Y	;

21	tBodyGyro-mean()-Z	;

22	tBodyGyro-std()-X	;

23	tBodyGyro-std()-Y	;

24	tBodyGyro-std()-Z	;

25	tBodyGyroJerk-mean()-X	;

26	tBodyGyroJerk-mean()-Y	;

27	tBodyGyroJerk-mean()-Z	;

28	tBodyGyroJerk-std()-X	;

29	tBodyGyroJerk-std()-Y	;

30	tBodyGyroJerk-std()-Z	;

31	tBodyAccMag-mean()	;

32	tBodyAccMag-std()	;

33	tGravityAccMag-mean()	;

34	tGravityAccMag-std()	;

35	tBodyAccJerkMag-mean()	;

36	tBodyAccJerkMag-std()	;

37	tBodyGyroMag-mean()	;

38	tBodyGyroMag-std()	;

39	tBodyGyroJerkMag-mean()	;

40	tBodyGyroJerkMag-std()	;

41	fBodyAcc-mean()-X	;

42	fBodyAcc-mean()-Y	;

43	fBodyAcc-mean()-Z	;

44	fBodyAcc-std()-X	;

45	fBodyAcc-std()-Y	;

46	fBodyAcc-std()-Z	;

47	fBodyAccJerk-mean()-X	;

48	fBodyAccJerk-mean()-Y	;

49	fBodyAccJerk-mean()-Z	;

50	fBodyAccJerk-std()-X	;

51	fBodyAccJerk-std()-Y	;

52	fBodyAccJerk-std()-Z	;

53	fBodyGyro-mean()-X	;

54	fBodyGyro-mean()-Y	;

55	fBodyGyro-mean()-Z	;

56	fBodyGyro-std()-X	;

57	fBodyGyro-std()-Y	;

58	fBodyGyro-std()-Z	;

59	fBodyAccMag-mean()	;

60	fBodyAccMag-std()	;

61	fBodyBodyAccJerkMag-mean()	;

62	fBodyBodyAccJerkMag-std()	;

63	fBodyBodyGyroMag-mean()	;

64	fBodyBodyGyroMag-std()	;

65	fBodyBodyGyroJerkMag-mean()	;

66	fBodyBodyGyroJerkMag-std()	;
