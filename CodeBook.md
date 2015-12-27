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

1-tBodyAccMEANX; 

2-tBodyAccMEANY; 

3-tBodyAccMEANZ; 

4-tBodyAccSTDX; 

5-tBodyAccSTDY; 

6-tBodyAccSTDZ; 

7-tGravityAccMEANX; 

8-tGravityAccMEANY; 

9-tGravityAccMEANZ; 

10-tGravityAccSTDX; 

11-tGravityAccSTDY; 

12-tGravityAccSTDZ; 

13-tBodyAccJerkMEANX; 

14-tBodyAccJerkMEANY; 

15-tBodyAccJerkMEANZ; 

16-tBodyAccJerkSTDX; 

17-tBodyAccJerkSTDY; 

18-tBodyAccJerkSTDZ; 

19-tBodyGyroMEANX; 

20-tBodyGyroMEANY; 

21-tBodyGyroMEANZ; 

22-tBodyGyroSTDX; 

23-tBodyGyroSTDY; 

24-tBodyGyroSTDZ; 

25-tBodyGyroJerkMEANX; 

26-tBodyGyroJerkMEANY; 

27-tBodyGyroJerkMEANZ; 

28-tBodyGyroJerkSTDX; 

29-tBodyGyroJerkSTDY; 

30-tBodyGyroJerkSTDZ; 

31-tBodyAccMagMEAN; 

32-tBodyAccMagSTD; 

33-tGravityAccMagMEAN; 

34-tGravityAccMagSTD; 

35-tBodyAccJerkMagMEAN; 

36-tBodyAccJerkMagSTD; 

37-tBodyGyroMagMEAN; 

38-tBodyGyroMagSTD; 

39-tBodyGyroJerkMagMEAN; 

40-tBodyGyroJerkMagSTD; 

41-fBodyAccMEANX; 

42-fBodyAccMEANY; 

43-fBodyAccMEANZ; 

44-fBodyAccSTDX; 

45-fBodyAccSTDY; 

46-fBodyAccSTDZ; 

47-fBodyAccJerkMEANX; 

48-fBodyAccJerkMEANY; 

49-fBodyAccJerkMEANZ; 

50-fBodyAccJerkSTDX; 

51-fBodyAccJerkSTDY; 

52-fBodyAccJerkSTDZ; 

53-fBodyGyroMEANX; 

54-fBodyGyroMEANY; 

55-fBodyGyroMEANZ; 

56-fBodyGyroSTDX; 

57-fBodyGyroSTDY; 

58-fBodyGyroSTDZ; 

59-fBodyAccMagMEAN; 

60-fBodyAccMagSTD; 

61-fBodyBodyAccJerkMagMEAN; 

62-fBodyBodyAccJerkMagSTD; 

63-fBodyBodyGyroMagMEAN; 

64-fBodyBodyGyroMagSTD; 

65-fBodyBodyGyroJerkMagMEAN; 

66-fBodyBodyGyroJerkMagSTD; 
