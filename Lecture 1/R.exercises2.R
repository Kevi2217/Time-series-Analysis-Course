library(astsa)
library(forecast)

tsdataliquor <- ts(DataLiquor)

is.ts(tsdataliquor)

tsdataliquor <- log(tsdataliquor)
  
plot(tsdataliquor)

# detrending the time-series
tsdataliquor1 <- detrend(tsdataliquor)
plot(tsdataliquor1)

# Removing seasonality

tsdataliquor_decomp <- decompose(tsdataliquor1)



tsdataliquor2 <- seasadj(tsdataliquor1)
plot(tsdataliquor2)




