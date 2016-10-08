# Codebook

### Used Libraries
- `plyr`: for averaging values with `ddply` function

### Variables
- `features`: describes each 'X' data columns (column names)
- `mean_n_stddev`: vector of feature position that name describes **mean** and **standard deviation** 

### Data
- `test_X`, `test_Y`, `train_X`, `train_Y`: origin data.
- `X`: data sets which extracted only mean and standard deviation columns. (merged `text_X` and `train_X`)
- `Y`: activity type. (merged `text_Y` and `train_Y`)
- `subject`: identifies the subject who performed the activity for each window sample. (range: 1 to 30) 
- `activities`: Human readable name of activity codes

### Result

`final_data`: result of program. (combined `X`, `Y` and `subject`)  

- Identifiers
  - `subject`
  - `activity`

- Activity (number: code)
  1. `WALKING`: 1
  2. `WALKING_UPSTAIRS`: 2
  3. `WALKING_DOWNSTAIRS`: 3
  4. `SITTING`: 4 
  5. `STANDING`: 5
  6. `LAYING`: 6

- Measurments
  - `tBodyAcc-mean()-X, Y, Z`
  - `tBodyAcc-std()-X, Y, Z`
  - `tGravityAcc-mean()-X, Y, Z`
  - `tGravityAcc-std()-X, Y, Z`
  - `tBodyAccJerk-mean()-X, Y, Z``
  - `tBodyAccJerk-std()-X, Y, Z`
  - `tBodyGyro-mean()-X, Y, Z`
  - `tBodyGyro-std()-X, Y, Z`
  - `tBodyGyroJerk-mean()-X, Y, Z`
  - `tBodyGyroJerk-std()-X, Y, Z`
  - `tBodyAccMag-mean()`
  - `tBodyAccMag-std()`
  - `tGravityAccMag-mean()`
  - `tGravityAccMag-std()`
  - `tBodyAccJerkMag-mean()`
  - `tBodyAccJerkMag-std()`
  - `tBodyGyroMag-mean()`
  - `tBodyGyroMag-std()`
  - `tBodyGyroJerkMag-mean()` 
  - `tBodyGyroJerkMag-std()`
  - `fBodyAcc-mean()-X, Y, Z`
  - `fBodyAcc-std()-X, Y, Z`
  - `fBodyAccJerk-mean()-X, Y, Z`
  - `fBodyAccJerk-std()-X, Y, Z`
  - `fBodyGyro-mean()-X, Y, Z`
  - `fBodyGyro-std()-X, Y, Z`
  - `fBodyAccMag-mean()`
  - `fBodyAccMag-std()`
  - `fBodyBodyAccJerkMag-mean()`
  - `fBodyBodyAccJerkMag-std()`
  - `fBodyBodyGyroMag-mean()`
  - `fBodyBodyGyroMag-std()`
  - `fBodyBodyGyroJerkMag-mean()`
  - `fBodyBodyGyroJerkMag-std()`
