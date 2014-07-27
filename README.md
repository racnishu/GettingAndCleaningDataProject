GettingAndCleaningDataProject
=============================

Introduction
------------
In this GITHUB repo I have stored the files for the Course Project under the course "Getting and Cleaning data", part of the Data Science specialization.
Below are the notes attached for each activity associated with this course project. 

Raw data 
------------------
The Raw data is stored as part of training and testing data sets

In each data set we have following observations: 
a)All the features in this data are not labelled and are stored in the x_test.txt. 
b)The activity labels are in the y_test.txt file.
c)All the test subjects are stored in the subject_test.txt file.

Steps to Start Project
-------------------------------------
I downloaded the complete data set from the assignments page and stored it on my Desktop under the dir C:/Users/rachit.kulshrestha/Personal/Courses/Getting and Cleaning Data
Also created a rep on GIThb and cloned it in the same location names as project- used this dir to submit final results and run_analysis.R file.

Run_Analysis.R 
----------------

The script run_analysis.R will first merge the test and training sets together.
After merging testing and training, I added labels to the data and also made sure that only those columns that have to do with mean and standard deviation are kept.

The script will then create a clean data set that contains the names of all the columns per test subject and activity.
After this step we write this data set into a file called cleanData.txt which is stored in the cloned rep "Project" which is then pused to GITHUB

The final result is stored in the cleanData.txt file and its is submitted on Coursera assignment page. 

The Code Book
-------------------
I have also added a CodeBook.md file which explains the details about data and variables used in the completion of this script.




