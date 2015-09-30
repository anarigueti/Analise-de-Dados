### Functions
### for analyzin gapminder data
### Ana Cecilia
### Sep,29

#function to calculate the CV, 
#takes a vector of numbers, 
#returns the coefficient of variance:
cal_CV <- function(x){
  mean_x <- mean(x)
  sd_x <- sd(x)
  CV <- sd_x/mean_x
  return(CV)
}

#go from circumference to diameter
circum_to_diameter <- function(circ){
  diam <- circ/pi
  return(diam)
}

#go for radius
diameter_to_radius <- function(diam){
   radius <- diam/2
  return(radius)
}

#radius to area
radius_to_area <- function(radius){
  area <- pi*radius^2
  return(area)
}

#start with circumference and get the area
area_from_circum <- function(circum){
##get the diameter from circumference
  diam <- circum_to_diameter(circum)
##get the radius
  rad <- radius_from_diameter(diam)
##calculate area from radius
  Area <- radius_to_area(rad)
  return(Area)
}


