#Loading Packages
library(forecast)
library(ggplot2)
library(tseries)
library(summarytools)
#Using Air Passengers dataset
data("AirPassengers")
tsdata<-AirPassengers


#Getting into the Dataset
class(tsdata)

tsdata

dfSummary(tsdata)

#Plotting raw data and checking cycle
as.data.frame(tsdata)

cycle(tsdata)

plot(tsdata, ylab="Passengers (1000s)",type="o",main="Air Passenger numbers from 1949 to 1961")

#Using the boxplot function to see any seasonal effects.
boxplot(tsdata~cycle(tsdata),xlab="Date", ylab = "Passenger Numbers (1000's)" ,main ="Monthly Air Passengers Boxplot from 1949 to 1961")



#Decomposing the data (Trend/Seasonal/RandomError)
tsdata_decom <- decompose(tsdata, type = "multiplicative")
autoplot(tsdata_decom)

#Testing the stationarity of data
#Augmented Dickey-Fuller Test
adf.test(tsdata) 
#the p-value is 0.01 which is <0.05, therefore, we reject the null hypothesis and hence time series is stationary.

#Autocorrelation test
autoplot(acf(tsdata,plot=FALSE))+ labs(title="Correlogram of Air Passengers data") 

tsdata_decom$random
autoplot(acf(tsdata_decom$random[7:138],plot=FALSE))+ labs(title="Correlogram of Air Passengers Random Component") 


#Fitting the model
#Linear model
autoplot(tsdata) + geom_smooth(method="lm")+ labs(x ="Date", y = "Passenger numbers (1000's)", title="Air Passengers data") 


#ARIMA Model
arimats <- auto.arima(tsdata)
arimats




ggtsdiag(arimats)


#Forecast of Arima Model
fts <- forecast(arimats, level = c(95),h = 36)
autoplot(fts)

