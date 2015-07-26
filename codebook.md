Purpose:
	The purpose of this codebook is to provide a description of variables in the final tidy dataset, methods used to generate these variables, the definitions of variables, layout, and units, if any. The codebook is to be used as a a data dictionary.

Brief Introduction:
A samsung smartphone was used to measure  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. This was done using the smartphone's embedded accelerometer and gyroscope.The subjects were split into test and train groups giving us test and train data. The subjects performed various activities(Walking, LAYING, STANDING,WALKING UPSTAIRS,WALKING DOWNSTAIRS,sitting) to generate the data.The final tidy data set contains only Standard deviation and Mean for various subjects performing various activities.

NOTE: prefix  'f' indicates frequency domain signals and 't' denotes time. 


Variable Name				Description					
************************************************************************************************		
"tBodyAcc-std()-X"            		Body Accelerometer Standard Deviation(SD) on X axis
"tBodyAcc-std()-Y"           		Body Accelerometer Standard Deviation on y axis
"tBodyAcc-std()-Z"            		Body Accelerometer Standard Deviation on z axis
"tGravityAcc-std()-X"         		Gravity Accelerometer Standard Deviation on X axis
"tGravityAcc-std()-Y"        		Gravity Accelerometer Standard Deviation on y axis
"tGravityAcc-std()-Z"         		Gravity Accelerometer Standard Deviation on z axis
"tBodyAccJerk-std()-X" 	       		Body Accelerometer Jerk Standard Deviation on X axis
"tBodyAccJerk-std()-Y"       		Body Accelerometer Jerk Standard Deviation on y axis
"tBodyAccJerk-std()-Z"        		Body Accelerometer Jerk Standard Deviation on z axis
"tBodyGyro-std()-X"           		Body gyroscpoe SD - X Axis
"tBodyGyro-std()-Y"          		Body gyroscpoe SD - y Axis
"tBodyGyro-std()-Z"           		Body gyroscpoe SD - z Axis
"tBodyGyroJerk-std()-X"       		Body gyroscpoe jerk SD - X Axis
"tBodyGyroJerk-std()-Y"      		Body gyroscpoe jerk SD - y Axis
"tBodyGyroJerk-std()-Z"       		Body gyroscpoe jerk SD - z axis
"tBodyAccMag-std()"   			Body accelerometer magnitude SD     
"tGravityAccMag-std()"   		gravity accelerometer magnitude SD       
"tBodyAccJerkMag-std()" 		Body accelerometer jerk magnitude SD       
"tBodyGyroMag-std()"          		Body gyro magnitude standard SD
"tBodyGyroJerkMag-std()"		Body gyro magnitude jerk standard SD     
"fBodyAcc-std()-X"            		Body Accelerometer Standard Deviation(SD) on X axis
"fBodyAcc-std()-Y"            		Body Accelerometer Standard Deviation on y axis
"fBodyAcc-std()-Z"           		Body Accelerometer Standard Deviation on z axis
"fBodyAccJerk-std()-X"        		Body Accelerometer Jerk Standard Deviation on X axis
"fBodyAccJerk-std()-Y"        		Body Accelerometer Jerk Standard Deviation on y axis
"fBodyAccJerk-std()-Z"       		Body Accelerometer Jerk Standard Deviation on z axis
"fBodyGyro-std()-X"           		Body gyroscpoe SD - X Axis
"fBodyGyro-std()-Y"           		Body gyroscpoe SD - y Axis
"fBodyGyro-std()-Z" 	       		Body gyroscpoe SD - z Axis
"fBodyAccMag-std()"			Body accelerometer magnitude SD           		 
"fBodyBodyAccJerkMag-std()"   		Body body accelerometer jerk magnitude SD
"fBodyBodyGyroMag-std()"     		Body body gyroscope magnitude SD
"fBodyBodyGyroJerkMag-std()"  		Body body gyroscope jerk magnitude SD
"tBodyAcc-mean()-X"           		Body Accelerometer Mean on X axis
"tBodyAcc-mean()-Y"          		Body Accelerometer Mean on y axis
"tBodyAcc-mean()-Z"    			Body Accelerometer Mean on z axis       
"tGravityAcc-mean()-X"      		Gravity Accelerometer Mean on X axis  		
"tGravityAcc-mean()-Y"   		Gravity Accelerometer Mean on y axis	    
"tGravityAcc-mean()-Z"        		Gravity Accelerometer Mean on z axis
"tBodyAccJerk-mean()-X"       		Body Accelerometer Jerk Mean on X axis
"tBodyAccJerk-mean()-Y"      		Body Accelerometer Jerk Mean on y axis
"tBodyAccJerk-mean()-Z"       		Body Accelerometer Jerk Mean on z axis
"tBodyGyro-mean()-X"          		Body gyroscpoe Mean - X Axis		
"tBodyGyro-mean()-Y"         		Body gyroscpoe Mean - y Axis
"tBodyGyro-mean()-Z"          		Body gyroscpoe Mean - z Axis
"tBodyGyroJerk-mean()-X"      		Body gyroscpoe jerk Mean - X Axis	
"tBodyGyroJerk-mean()-Y"     		Body gyroscpoe jerk Mean - y Axis
"tBodyGyroJerk-mean()-Z"      		Body gyroscpoe jerk Mean - z Axis
"tBodyAccMag-mean()"         		Body accelerometer magnitude Mean 
"tGravityAccMag-mean()"      		gravity accelerometer magnitude Mean
"tBodyAccJerkMag-mean()"      		Body accelerometer jerk magnitude Mean
"tBodyGyroMag-mean()"         		Body gyro magnitude Mean
"tBodyGyroJerkMag-mean()"    		Body gyro jerk magnitude Mean
"fBodyAcc-mean()-X"    			Body Accelerometer Mean on X axis	       
"fBodyAcc-mean()-Y"           		Body Accelerometer Mean on y axis
"fBodyAcc-mean()-Z"          		Body Accelerometer Mean on z axis
"fBodyAccJerk-mean()-X"       		Body Accelerometer Jerk Mean on X axis
"fBodyAccJerk-mean()-Y"       		Body Accelerometer Jerk Mean on y axis
"fBodyAccJerk-mean()-Z"      		Body Accelerometer Jerk Mean on z axis
"fBodyGyro-mean()-X"          		Body gyroscpoe Mean - X Axis
"fBodyGyro-mean()-Y"          		Body gyroscpoe Mean - y Axis
"fBodyGyro-mean()-Z"         		Body gyroscpoe Mean - z Axis
"fBodyAccMag-mean()"          		Body accelerometer magnitude Mean
"fBodyBodyAccJerkMag-mean()"  		Body body accelerometer jerk magnitude Mean
"fBodyBodyGyroMag-mean()"    		Body body gyroscope magnitude Mean
"fBodyBodyGyroJerkMag-mean()"		Body body gyroscope jerk magnitude Mean