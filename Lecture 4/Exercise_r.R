library(tseries)
# Exercise:

# Use the dataset Unit root.csv file and find the order of integration.

# Omit the numerate row
unit_root_data <- subset(Unit_root, select = x)
  
# Convert it in time series data
ts_ur_data <- ts(unit_root_data, frequency = 1)


# Make a loop that difference the data, until the null-hypothesis is rejected.
i <- 1

if(adf.test(ts_ur_data)$p.value > 0.05){
  ts_ur_data <- diff(ts_ur_data, 1)
  i <- i + 1
} else{adf.test(ts_ur_data)}



