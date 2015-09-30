## Day 2 
## 29.09.2015

## great
## lets go again
# load packages -----------------------------------------------------------

library(ggplot2)


# load data ---------------------------------------------------------------

gapminder <- read.csv("Análise de Dados/data (field data)/gapminder.csv")


# load functions ----------------------------------------------------------

source("Análise de Dados/scripts/functions.R")
#going up files ../

# subsetting review -------------------------------------------------------

#simple methods
# x[a] for vectors
x <- c(10:1)
x
x[3]

# x[a,b] for matrices,data frame
x <- list(c(1:10),c(10:20))
x

# x["a"] oe x["b"] gives the value that is inside de "list" you called
x <- c(1:10)
names(x) <- letters[1:10]
x
x["b"]

# x[[a]] for lists and data frame
x <- list(c(1:10),c(10:20))
x
x[[1]]

# x$a for matrices and data frames
names(x) <- c("one","two")
x
x$two

## more complex methods
# >,<,==
gapminder[gapminder$country=="Brazil",]

# %in% when you want a part of a vector
x <- c(1:10)
names(x) <- letters[1:10]
x

x==c(4,5,6)
x[x%in%c(4,5,6)]
x[names(x)%in%c("d","f","j")]

## Challange
gapminder[gapminder$year=="1957",]
gapminder[,-(1:4)]
gapminder[gapminder$lifeExp>80,]
gapminder[1,c(4,5)]
head(gapminder[-1,-c(4,5)])

#different ways to do the same things
 gapminder[gapminder$year==2002|2007,]
g1 <- gapminder[gapminder$year==2002,]
g2 <- gapminder[gapminder$year==2007,]
rbind(g1,g2)
 gapminder[gapminder$year==2002|gapminder$year==2007,]
 gapminder$year%in%c(2002,2007)

 
# Ploting ----------------------------------------------------------------
 
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap))+geom_point()
 #color per continent
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap,color=continent))+geom_point() 
 #challenge:
ggplot(data=gapminder,aes(x=year,y=pop,color=continent,group=country))+
  geom_point(colour="black")+
  geom_line()+
  scale_y_log10()
## change the order of points and lines
ggplot(data=gapminder,aes(x=year,y=pop,color=continent,group=country))+
  geom_line()+
  geom_point(colour="black")+
  scale_y_log10()
##split up by continents
ggplot(data=gapminder,aes(x=year,y=pop,color=continent,group=country))+
  geom_line()+
  geom_point(colour="black")+
  scale_y_log10()+
  facet_wrap(~continent)
## change the points color and size
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap))+
  geom_point(colour="red",size=2)+
  scale_y_log10()+
  geom_smooth(method="lm",size=1.5)
## when you use the color funciton inside aes function, you'll have colors depending on you data
## when you use it inside the geom_points, you just group every data.
  
## Density plot by year and continent
ggplot(data=gapminder,aes(x=gdpPercap,color=continent,group=continent,fill=continent))+
  geom_density(alpha=0.4)+
  scale_x_log10()+
  facet_wrap(~year)

ggplot(data=gapminder,aes(x=gdpPercap,color=continent,group=continent,fill=continent))+ #everything that cames from data
  geom_density(alpha=0.4)+ #everything you want to change in density layout
  scale_x_log10()+ #transformating data
  facet_wrap(~year) #making graphs per year

## changing theme (escalas, índices, fontes)
ggplot(data=gapminder,aes(x=gdpPercap,color=continent,group=continent,fill=continent))+
  geom_density(alpha=0.4)+
  scale_x_log10()+
  facet_wrap(~year)+
  ggtitle("PIB por continente")+
  ylab("Densidade")+
  xlab("PIB")
 
## saving a plot or save directly in plot box
ggsave("figures (graphs)/densityplot.pdf")
ggsave("figures (graphs)/densityplot.jpg")

pdf(file="figures (graphs)/pdf_density_plot.pdf",height=7)


##Challenge
pdf(file="Análise de Dados/figures (graphs)/Density_plot.pdf",height=7)
# saving graphs at the same file, but different pages
ggplot(data=gapminder,aes(x=gdpPercap,color=continent,group=continent,fill=continent))+
  geom_density(alpha=0.4)+
  scale_x_log10()+
  facet_grid(~continent)+
  ggtitle("PIB por continente")+
  ylab("Densidade")+
  xlab("PIB")

ggplot(data=gapminder,aes(x=gdpPercap,color=continent,group=continent,fill=continent))+
  geom_density(alpha=0.4)+
  scale_x_log10()+
  facet_wrap(~year)+
  ggtitle("PIB por continente")+
  ylab("Densidade")+
  xlab("PIB")

  dev.off()
# obs can do this for jpeg too.
 ## package multiplot > function multiplot
 ## grid.arrange
 ## gridExtra::grid.arrange()

  
  
  
# working with data frames ------------------------------------------------

 # rbind and cbind can add rows and columns to data frame

iris 
#add a new column
  iris$Family <- "Iridaceae"
  head(iris)
  
#add a column using data from the data frame (create a column with new data)
  iris$Petal.Area <- iris$Petal.Length*iris$Petal.Width
  head(iris)

iris$Setal.Area <- with(iris, Sepal.Width*Sepal.Length)
head(iris)
  
#summary stats
mean(iris$Petal.Width)
sd(iris$Petal.Width)
median(iris$Petal.Width)

#coefficient of variation
mean_petal_width <- mean(iris$Petal.Width)
sd_petal_width <- sd(iris$Petal.Width)
coefficient_of_variation <- sd_petal_width/mean_petal_width 

mean_sepal_length <- mean(iris$Sepal.Length)
sd_sepal_length <- sd(iris$Sepal.Length)
cv_sepal_length <- sd_sepal_length/mean_sepal_length


# R functions -------------------------------------------------------------

cal_CV(iris$Setal.Area)
cal_CV(iris$Petal.Area)

circum_to_diameter(30)
diameter_to_radius(30)
radius_to_area(6)
area_from_circum(40)

#make a data frame
circs <- data.frame(xs=10:200)
head(circs)
circs$areas <- area_from_circum(circum=circs$xs)
head(circs)

ggplot(circs,aes(x=xs,y=areas))+geom_line()



# saving data -------------------------------------------------------------

brazil <- gapminder[gapminder$country=="Brazil",]
brazil

write.table(brazil,file="Análise de Dados/cleaned_data (modified)/brazil_data.csv",sep=",")

write.table(brazil,file="Análise de Dados/cleaned_data (modified)/brazil_data.csv",
            sep="\t",row.names=FALSE,quote=FALSE)
brazil2 <- write.table(brazil,file="Análise de Dados/cleaned_data (modified)/brazil_data.csv",
                       sep="\t",row.names=FALSE,quote=FALSE)

challenge <- gapminder[gapminder$year>1989,]
write.table(challenge,file="Análise de Dados/cleaned_data (modified)/Challenge.csv",sep="\t",row.names=FALSE,quote=FALSE)
