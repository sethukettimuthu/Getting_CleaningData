I used the following steps at a high level to get to the final tidy set. Install packages dplyr and reshape2 for this excercise.


1)We start off when we download the data set in zip file format(from given site) and unzip in local folder which is R working directory.
 
2)Then we read using read.table the two data files into R, test(test_data) and train(train_data). Check for NA was performed using "any(is.na(train_data))". 

3)The str(data),dim(data),head(data),tail(data),summary(data) etc. were performed many times to understand the data and to check the validity of data periodically.


4)Then we similarly read 6 other files and create the following datasets: activity_labels,features_list,test_labels,train_labels,test_subjects,train_subjects.

5)Then we use cbind to add test and train column labels to the test and train data set respectively.

6) Next step is to combine test and train data using rbind and call the resulting dataset data_full.data_full has 10299 obvervations and 562 variables(including the to be renamed in step11, activity column).

7) The second column of Features.txt has the column header which is added to features_vect

8)At this point we can use gsub and/or regular expressions within a for loop to customize the header names, if needed. BUT THIS IS NOT A REQUIREMENT for this project. Nevertheless, I give below sample gsub code that can be used if needed.

for (i in 1:length(features_vect)) 
{
            features_list[i] = gsub("-std","SD",features_list[i])
            features_list[i] = gsub("-Mean","Mean",features_list[i]
            etc...
}

9) Add header using names() function from features_vect to the data_full dataset

10) At this pioint, optionally, the test for duplicate columns can be performed. The result set after removing duplicates are stored in data_full_uniq

11) change the column name (of column one) in data_full_uniq to "activity".

12) use grep to get only the columns that ends in "mean()" and "std()" creating a data_subset.

13)rbind train and test subjects to subjects dataset and then cbind subjects to data_subset.

14) rename first colname in the new dataset(data_subset_subj_activity)to subject using colnames function.At this point the data_subset_subj_activity dataset has 10299 observations and 68 variables.

15) substitute the activity descriptive names(Walking, standing etc) to the activity labels/numbers.

16) reshape data using melt - use subject and activity as id and rest as measurement variables.

17) Get the FINAL tidy narrow data set using dcast command. At this point there are 180 observations and 68 variables.

18) Finally use the write.table to create a local file called "FinalTidyDataSet.txt"
































