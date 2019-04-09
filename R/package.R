# This code has a simple function to convert from degrees Celsius
# to degrees Fahrenheit. In the workshop or on your own, use this
# function to try out building a very simple R package. In R Studio, 
# create a new project for an R package, then move this function 
# into its "R" directory and go from there. 

# Create the function
c_to_f <- function(temp_in_c){
  (temp_in_c * 9 / 5) + 32
}

# Try the function out

c_to_f(0)
c_to_f(100)
