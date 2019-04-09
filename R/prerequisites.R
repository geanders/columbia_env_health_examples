# You only need to run this once, not every time you use the package.
install.packages(c("devtools", "drat", "tigris", "ggplot2", "weathermetrics"))


library(drat)
addRepo("geanders")
install.packages("hurricaneexposuredata")
install.packages("hurricaneexposure")