library(astsa)
library(forecast)

tsdataliquor <- ts(DataLiquor)

is.ts(tsdataliquor)

plot(tsdataliquor)

# detrending the time-series
tsdataliquor1 <- detrend(tsdataliquor)
plot(tsdataliquor1)

# Removing seasonality
tsdataliquor2 <- tbats(tsdataliquor1)
plot(tsdataliquor2)
