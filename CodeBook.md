# Codebook

### Used Libraries
- plyr: for averaging values with `ddply` function

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
- `final_data`: result of program. (combined `X`, `Y` and `subject`)
