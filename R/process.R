# Load general packages

library(dplyr)

# Load example data

## The package `dlnm` includes an example dataset with weather and 
## mortality data from Chicago, IL, for 1987--2000 (originally from 
## the NMMAPS dataset). To load this data, run:

library(dlnm)
data(chicagoNMMAPS)

# Example: identify and plot heat wave days

## The `futureheatwaves` package includes a function you can use to 
## identify heatwave days, based on different thresholds of temperature
## and numbers of days required to classify as a heatwave.

library(futureheatwaves)



# Example: convert among weather metrics

## The `weathermetrics` includes functions for converting among common
## weather metrics (e.g., Celsius / Fahrenheit; knots / meters per second)
## as well as calculate new metrics (e.g., heat index from temperature and
## relative humidity or dewpoint temperature)

library(weathermetrics)


# Example: convert from UTC to local time

## The `countytimezones` package lets you convert from UTC to local time
## based on US county FIPS codes. This package was helpful in matching 
## hurricante tracking data (in UTC) to local health effects (date based
## on local time of death / hospitalization).

library(countytimezones)



# Example: model storm winds from Best Tracks data

## The `stormwindmodel` package lets you model hurricane winds at geographical 
## points (e.g., county centers) based on the National Hurricane Center's
## Best Tracks storm tracking data.

library(stormwindmodel)