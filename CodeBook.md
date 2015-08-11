# CodeBook



## Variables

The following list contain the variables appears in finalTidy.txt file. Details of the third variable to the last can be found at `features_info.txt`

 1. subjectID: The ID of subjects. Each subject has a unique ID. The range of IDs is between 1 to 30.                          
 2. activity: The subject's activity type when the data was captured. Including (from `activity_labels.txt`):
	1. WALKING
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING                 
 3. tBodyAcc-mean()-X                   
 4. tBodyAcc-mean()-Y                   
 5. tBodyAcc-mean()-Z                   
 6. tBodyAcc-std()-X                    
 7. tBodyAcc-std()-Y                    
 8. tBodyAcc-std()-Z                    
 9. tGravityAcc-mean()-X                
10. tGravityAcc-mean()-Y                
11. tGravityAcc-mean()-Z                
12. tGravityAcc-std()-X                 
13. tGravityAcc-std()-Y                 
14. tGravityAcc-std()-Z                 
15. tBodyAccJerk-mean()-X               
16. tBodyAccJerk-mean()-Y               
17. tBodyAccJerk-mean()-Z               
18. tBodyAccJerk-std()-X                
19. tBodyAccJerk-std()-Y                
20. tBodyAccJerk-std()-Z                
21. tBodyGyro-mean()-X                  
22. tBodyGyro-mean()-Y                  
23. tBodyGyro-mean()-Z                  
24. tBodyGyro-std()-X                   
25. tBodyGyro-std()-Y                   
26. tBodyGyro-std()-Z                   
27. tBodyGyroJerk-mean()-X              
28. tBodyGyroJerk-mean()-Y              
29. tBodyGyroJerk-mean()-Z              
30. tBodyGyroJerk-std()-X               
31. tBodyGyroJerk-std()-Y               
32. tBodyGyroJerk-std()-Z               
33. tBodyAccMag-mean()                  
34. tBodyAccMag-std()                   
35. tGravityAccMag-mean()               
36. tGravityAccMag-std()                
37. tBodyAccJerkMag-mean()              
38. tBodyAccJerkMag-std()               
39. tBodyGyroMag-mean()                 
40. tBodyGyroMag-std()                  
41. tBodyGyroJerkMag-mean()             
42. tBodyGyroJerkMag-std()              
43. fBodyAcc-mean()-X                   
44. fBodyAcc-mean()-Y                   
45. fBodyAcc-mean()-Z                   
46. fBodyAcc-std()-X                    
47. fBodyAcc-std()-Y                    
48. fBodyAcc-std()-Z                    
49. fBodyAcc-meanFreq()-X               
50. fBodyAcc-meanFreq()-Y               
51. fBodyAcc-meanFreq()-Z               
52. fBodyAccJerk-mean()-X               
53. fBodyAccJerk-mean()-Y               
54. fBodyAccJerk-mean()-Z               
55. fBodyAccJerk-std()-X                
56. fBodyAccJerk-std()-Y                
57. fBodyAccJerk-std()-Z                
58. fBodyAccJerk-meanFreq()-X           
59. fBodyAccJerk-meanFreq()-Y           
60. fBodyAccJerk-meanFreq()-Z           
61. fBodyGyro-mean()-X                  
62. fBodyGyro-mean()-Y                  
63. fBodyGyro-mean()-Z                  
64. fBodyGyro-std()-X                   
65. fBodyGyro-std()-Y                   
66. fBodyGyro-std()-Z                   
67. fBodyGyro-meanFreq()-X              
68. fBodyGyro-meanFreq()-Y              
69. fBodyGyro-meanFreq()-Z              
70. fBodyAccMag-mean()                  
71. fBodyAccMag-std()                   
72. fBodyAccMag-meanFreq()              
73. fBodyBodyAccJerkMag-mean()          
74. fBodyBodyAccJerkMag-std()           
75. fBodyBodyAccJerkMag-meanFreq()      
76. fBodyBodyGyroMag-mean()             
77. fBodyBodyGyroMag-std()              
78. fBodyBodyGyroMag-meanFreq()         
79. fBodyBodyGyroJerkMag-mean()         
80. fBodyBodyGyroJerkMag-std()          
81. fBodyBodyGyroJerkMag-meanFreq()     
82. angle(tBodyAccMean,gravity)         
83. angle(tBodyAccJerkMean),gravityMean)
84. angle(tBodyGyroMean,gravityMean)    
85. angle(tBodyGyroJerkMean,gravityMean)
86. angle(X,gravityMean)                
87. angle(Y,gravityMean)                
88. angle(Z,gravityMean)

## Tidy Log

The `finalTidy.txt` file was analyzed from `subject_test.txt`, `X_test.txt`, `y_test.txt`, `subject_train.txt`, `X_train.txt`, `y_train.txt`, `features.txt` and `activity_labels.txt`.
The steps below roughly describe the process of tidying these files, for more details, please see `run_analysis.R`.

1. Name columns of `X_test.txt` and `X_train.txt` by `features.txt`, rename others read data's 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
