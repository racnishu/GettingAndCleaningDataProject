CodeBook for the tidy dataset
=============================

Data source
-----------
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Description of the Data 
-----------------------

2 experimental factor features
"subject": the person id recruited for the experiment 30 levels (1-30) 
"activity": what the person was doing 6 levels ("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

All other features : 

"tbodyaccmeanx"	"tbodyaccmeany"	"tbodyaccmeanz"	"tbodyaccstdx"	
"tbodyaccstdy"	"tbodyaccstdz"	"tgravityaccmeanx"	"tgravityaccmeany"	
"tgravityaccmeanz"	"tgravityaccstdx"	"tgravityaccstdy"	"tgravityaccstdz"	
"tbodyaccjerkmeanx"	"tbodyaccjerkmeany"	"tbodyaccjerkmeanz"	"tbodyaccjerkstdx"	
"tbodyaccjerkstdy"	"tbodyaccjerkstdz"	"tbodygyromeanx"	"tbodygyromeany"	
"tbodygyromeanz"	"tbodygyrostdx"	"tbodygyrostdy"	"tbodygyrostdz"	"tbodygyrojerkmeanx"	
"tbodygyrojerkmeany"	"tbodygyrojerkmeanz"	"tbodygyrojerkstdx"	"tbodygyrojerkstdy"	
"tbodygyrojerkstdz"	"tbodyaccmagmean"	"tbodyaccmagstd"	"tgravityaccmagmean"	"tgravityaccmagstd"	
"tbodyaccjerkmagmean"	"tbodyaccjerkmagstd"	"tbodygyromagmean"	"tbodygyromagstd"	"tbodygyrojerkmagmean"	
"tbodygyrojerkmagstd"	"fbodyaccmeanx"	"fbodyaccmeany"	"fbodyaccmeanz"	"fbodyaccstdx"	"fbodyaccstdy"	"fbodyaccstdz"	
"fbodyaccmeanfreqx"	"fbodyaccmeanfreqy"	"fbodyaccmeanfreqz"	"fbodyaccjerkmeanx"	"fbodyaccjerkmeany"	"fbodyaccjerkmeanz"	"fbodyaccjerkstdx"
"fbodyaccjerkstdy"	"fbodyaccjerkstdz"	"fbodyaccjerkmeanfreqx"	"fbodyaccjerkmeanfreqy"	"fbodyaccjerkmeanfreqz"	"fbodygyromeanx"	
"fbodygyromeany"	"fbodygyromeanz"	"fbodygyrostdx"	"fbodygyrostdy"	"fbodygyrostdz"	"fbodygyromeanfreqx"	"fbodygyromeanfreqy"	
"fbodygyromeanfreqz"	"fbodyaccmagmean"	"fbodyaccmagstd"	"fbodyaccmagmeanfreq"	"fbodybodyaccjerkmagmean"	"fbodybodyaccjerkmagstd"	
"fbodybodyaccjerkmagmeanfreq"	"fbodybodygyromagmean"	"fbodybodygyromagstd"	"fbodybodygyromagmeanfreq"	"fbodybodygyrojerkmagmean"	
"fbodybodygyrojerkmagstd"	"fbodybodygyrojerkmagmeanfreq"	"angletbodyaccmean,gravity"	"angletbodyaccjerkmean,gravitymean"	"angletbodygyromean,gravitymean"
"angletbodygyrojerkmean,gravitymean"	"anglex,gravitymean"	"angley,gravitymean"	"anglez,gravitymean"

The variables are self explanatory and you can refer to features_info.txt file in the main folder to get more details about the data. 


Steps performed with the data in run_analysis.r
-----------------------------------------------

a) We first merged the Training and the Testing data sets into one data set and names it commonData in the script.
b) Edited the feature names to perform cleaning of the data. 
c) Selected only those features from the features.txt which had anything to do with the "mean" or the "stddev".
d) Stored the final cleaned data in a file names cleanData.txt