library(astsa)

#Quarterly Earnings per Share of Johnson and Johnson
data(jj)

plot(jj)


# Data for Global Temperature Deviations
data(xglobtemp)

plot(xglobtemp)


# Data for speech
data(speech)

plot(speech)

# Data for Southern Oscillation Index
data(ENSO)

plot(ENSO)

# Data for Recruitment
data(rec)

plot(rec)


### --- Construction of time-series data --- ###

# 365 random normally distributed data
randomdata <- rnorm(365)

# Convert data to time series data
randomdata <-ts(randomdata, frequency = 1)

#Apply acf function 
acf(randomdata)

