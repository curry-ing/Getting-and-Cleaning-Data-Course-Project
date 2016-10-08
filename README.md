# Cleaning Data from Wearable Computers
This repository is for **Getting and Cleaning Data Course Project** for Coursera Data Science course.  

### What this project do? 
Merge data which devided into train and test dataset, then select mean, standard deviation measurements from it. (each column described in feature.txt)
After than get average data group by subject and activity.

- Dataset: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/)

### How it works?
1. Merges the training and test datasets
2. Extracts only the measurements on the mean and standard deviation
3. Set the activity codes(by numeric) to human readable name 
4. Set column names with features used Step 2. 
5. Aggregate average data group by activity and subject

