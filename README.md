# Time-Series-Analysis
<img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Random-data-plus-trend-r2.png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;" />

## Introduction
Whether we wish to predict the trend in financial markets or electricity consumption, time is an important factor that must now be considered in our models. For example, it would be interesting to forecast at what hour during the day is there going to be a peak consumption in electricity, such as to adjust the price or the production of electricity.
Enter the time series.
A time series is simply a series of data points ordered in time. In a time series, time is often the independent variable and the goal is usually to make a forecast for the future.
## Tools used
This Project is made in R.
#### Libraries Used
forecast, ggplot2, tseries, summarytools.
## Synopsis
1. Perform exploratory data analysis
2. Decomposition of data
3. Test the stationarity
4. Fit a model used an automated algorithm
5. Calculate forecasts


### EDA

<img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Screenshots/Screenshot%20(55).png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;" 
     width="600" height="500"/>
 <img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Screenshots/Screenshot%20(53).png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;"
      width="600" height="500"/>
     
     
 From these exploratory plots, we can make some initial inferences:

1. The passenger numbers increase over time with each year which may be indicative of an increasing linear trend, perhaps due to increasing demand for flight travel and commercialisation of airlines in that time period.
2. In the boxplot there are more passengers travelling in months 6 to 9 with higher means and higher variances than the other months, indicating seasonality with a apparent cycle of 12 months. The rationale for this could be more people taking holidays and fly over the summer months in the US.
3. AirPassengers appears to be multiplicative time series as the passenger numbers increase, it appears so does the pattern of seasonality.
4. There do not appear to be any outliers and there are no missing values. Therefore no data cleaning is required.
 ### Decomposition of data
  <img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Screenshots/Screenshot%20(52).png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;" 
      width="600" height="500"/>
     
 We will decompose the time series for estimates of trend, seasonal, and random components using moving average method.
 
 ### Testing Stationarity
 A stationary time series has the conditions that the mean, variance and covariance are not functions of time. In order to fit arima models, the time series is required to be stationary.
 
 
 
 
 ### Fit a time series model
  <img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Screenshots/Screenshot%20(54).png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;"
      width="600" height="500" />
     
  Since there is an upwards trend we will look at a linear model first for comparison. We plot AirPassengers raw dataset with a blue linear model.
  
  This may not be the best model to fit as it doesn’t capture the seasonality and multiplicative effects over time.
  
  Hence ARIMA Model is used that fits well. 
     
     
 ### Calculating Forecasts
 <img src="https://github.com/samrath789/Time-Series-Analysis/blob/master/Screenshots/Screenshot%20(51).png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;"
     width="600" height="500"/>    
     
To summarize, this has been an exercise in ARIMA modeling and using time series R packages ggfortify, tseries and forecast.
We have done the time series analysis and calculated forecasts using AirPassengers dataset.
