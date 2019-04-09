# Load general packages
library(dplyr)
library(ggplot2)
library(sf)




# Example: data package

## The `hurricaneexposuredata` includes collected data on a number
## of exposure metrics (wind, rain, flood events, tornado events)
## for all counties in the eastern half of the US for several years
## (exact years available depends on the exposure variable)
# See the online booklet for instructions on installing `hurricaneexposuredata`.

library(hurricaneexposuredata)
library(hurricaneexposure)

## Get all storms that caused tropical storm-level or higher winds in 
## New York County, NY, between 1988 and 2015
county_wind(counties = "36061", 
            start_year = 1988, 
            end_year = 2015, 
            wind_limit = 17.5) 

## Get all storms that caused flood events in 
## New York County, NY, or Suffolk County, MA,
## between 1996 and 2015
county_events(counties = c("36061", "25025"),
              start_year = 1996, end_year = 2015, 
              event_type = "flood")

## Map rain exposures to Hurricane Ivan in 2004
map_counties(storm = "Ivan-2004", metric = "rainfall")








# Example: package to collect US census spatial data

## Kyle Walker and Bob Rudis' `tigris` package allows you to pull and 
## map geospatial data (including county boundaries) from the 
## US Census. Because this package is accessing an online database, 
## your computer must be online for this code to work.

library(tigris)

## Download Florida county shapefiles. Get it as an `sf` class object.
fl_counties <- counties(state = "FL",
                        class = "sf")

## Map the land area of each county (this data comes default with the 
## shapefiles).
ggplot() + 
  geom_sf(data = fl_counties, 
          aes(fill = ALAND)) + 
  theme_bw() + 
  scale_fill_viridis_c(name = "Land area", label = scales::scientific) + 
  theme(axis.text = element_blank(),
        axis.ticks = element_blank())
