# everything after a hastag is ignored 
# Day 1 
2+2
# ctrl+R run your function

# objects
x<- 5
x*2 
x^3  #elevado a 3#

#math functions
x^10
log(x)
log10(x)
sin(30)

#if you forget what a function do, ?function
?sin
# function name (arguments)

# find out if x is bigger than...(answers: TRUE or FALSE)
x > 2
x < 3
x == 5 #to know if a number is the same of other number

#challenge:
mass <- 47.5
age <- 122  

mass > age

mass <- mass * 2.3  #change the values
age <- age-20

mass > age

#data types


#logical
a <- TRUE
b <-  FALSE

# integer
c <- 5L
 
# double
d <-  5
 #complex numbers
e <- 1 +2i
e
#character
f <-  "cat"

# what type of data do i have?
typeof(c)
typeof(d)

is.integer(c)
is.double(d)
is.double(c)
is.character(c)

answer <- TRUE
height <- 25
dog_name <- "kate"

typeof(answer)
is.numeric(height)
is.character(dog_name)

## data structure
# vector 
vecl <- vector()
vecl
vecl <- vector("character")
vecl
vec2 <- vector("character",length=5)
vec3 <- c(1,2,3,4,5)
vec3
vec4 <- c(0:100)
vec4
vec5 <- seq(0,100,by=0.5) #aumentando de 0.5 e, 0.5
vec5
vec6 <- c(TRUE,10L,"cat")
vec6
typeof(vec6)

as.double(vec6)

x <- 0:10000
length(x)
str(x)
head(x) # ver os primeiros numeros  
tail(x)

ages <- c(23,24,25,32,49)
ages
names(ages) <- c("Juliana","Rodrigo","Carlos","Bella","Andrew") #tribute,

ages
typeof(ages) #double, its numeric vector

# numeric and double, whats the difference? Inside numeric we have double and integer
x <- c(5,6,7,8)
y <- c(5L,6L,7L,8L)
is.numeric(x)
is.numeric(y)
typeof(x)
typeof(y)

## Matrices
x <- matrix(1:10,nrow=5,ncol=2)
x
str(x)

rownames(x) <- c("a","b","c","d","e")
colnames(x) <- c("a","b")
x

x <- matrix(rnorm(18),ncol=6,nrow=3)
x
 # rnorm números de distribuição normal
length(x)
?length

x <- matrix(1:50,ncol=5,nrow=10)
x
?matrix
x <- matrix(1:50,ncol=5,nrow=10,byrow=TRUE) #byrow fill the matrix by rows, and bycol fill the matrix by columns
x
 TRUE <- 5 #the word TRUE can never change. but the letter T can. So do the word FALSE and the letter F.
 
 ## Factors
 x <- factor(c("yes","no","yes","no"))
 typeof(x)
 str(x) #this use the alphabetic order
 
 x <- factor(c("case","control","control","case"),levels=c("control","case"))
 x
 str(x)
 
 ## Lists: contain multiple data types
 
 x <- list(1,"a",TRUE,5L)
 x
 
 xlist <- list(name="Iris Data", nums=1:10)
 head(iris)
 xlist
 
 df <- data.frame(id=c("a","b","c","d","e","f"),x=1:6,y=(214:219))
 df
 length(df) #dataframe tem listas como objeto, por isso o tamanho é 3, e nao 18. porque tem três listas contendo 6 
 
 #adding rows and columns to data frame
 rbind(df,df) #adiciona linhas
 cbind(df,df) #adiciona colunas
 
 Anadata <- data.frame(First_Name=c("Ana"),Last_Name=c("Rigueti"),Age=c(25))
 Anadata
 
 Lindadata <- data.frame(First_Name=c("Linda"), Last_Name=c("Eggertsen"),Age=c(33))
 Lindadata
 
 dfday1 <- rbind(Anadata,Lindadata) #adiciona linhas no data frame
 str(dfday1)
 #toda coluna deve ter o mesmo tipo de dados. Se não tiver não roda
 
 #como tirar apensa uma parte de um grande data frame:
 ##subsetting (taking out parts of larger objects)
  x <- c(5.4,6.2,7.1,4.8,7.5)
 names(x) <- c("a","b","c","d","e")
 x
 typeof(x)
 is.double(x)
 is.numeric(x)
 
 x[1]
 x
 x[3]
 x[1:3] #1,2,3
 x[c(3,5)]#3,5
 
 x[c(1,1,1,4)]
 x[10] #se nao tem 10 objetos, NA 
 x[1:5]
 x[5:1] #change the sequency
 
 #skipping elements
 x[-1] #sem o primeiro elemento -1
 x[-c(2,4)]
 x[c(-2,-4)]
 
## challenge
 x[-c(1,5)]
 x[2:4]
 x[c(2,3,4)]
 x[c("b","c","d")]
 x[c(FALSE,TRUE,TRUE,TRUE,FALSE)]
 
 ##subsetting by names
 x["a"]
 names(x)=="b" #procura em true or false o nome do vetor que você escolher
 is_it_b <- names(x)=="b"
 x[is_it_b]
 
 # for matching multiple things
 names(x)%in%c("b","c","d")
 names(x)
 x[names(x)%in%c("b","c","d")]
 
 ## multiple conditions
 a <- 1:10
 a>7
 a[a>7]
 a[a<7]
 a[a<=7] #numeros menores e igual a 7
 
 TRUE&FALSE
 TRUE&TRUE
 FALSE&TRUE
 TRUE|FALSE
 FALSE|TRUE
 
 1:5*2
 1:5*1:5 #1 vez 1, 2 vezes 2, 3 vezes 3...
 
 #challenge
 x
 x[x>4&x<7]
 x[(x>4)&(x<7)]
 
 ## how many times is x greater thab 6??
 x
as.numeric(x>6)
sum(x>6) #quantos numeros estao acima de 6
x & TRUE

## Matrices
set.seed(1)
m <- matrix(rnorm(6*4),ncol=4,nrow=6) #the same random numbers
m
m[1:3,c(2,3)] #rows,column
m[,3] #coluna
m[3,] #linha
m[1:2,]

##subsetting lists
xlist <- list(a="UFRJ",b=1:10,c=head(iris))
xlist

#buscando listas dentro do data frame
xlist[1]
xlist["a"]
xlist$a
xlist[[1]]
xlist[["a"]]

uni1 <- xlist[1]      
uni2 <- xlist[[1]]
uni1
uni2
typeof(uni1)
typeof(uni2)

xlist
xlist[2] #here you get the list, discriminated...
xlist[[2]] #here you get whats in the list

xlist$b
xlist[["b"]]
xlist[["b"]][2]
newobj <- xlist[["b"]]
newobj[2]

#reading in data
gapminder <- read.csv("gapminder.csv")
##session > set working directory > to source file location ## isso muda o arquivo para a mesma ´pasta que o r esta usando no momento
gapminder
str(gapminder)
 gapminder$pop
 gapminder[["pop"]]
gapminder[1:2,] #duas primeiras linhas

gapminder$country
gapminder$country=="Brazil"
Brasil <- gapminder$country=="Brazil"
gapminder[Brasil,]

##plotting
library(ggplot2)
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap))+geom_point()
ggplot(data=gapminder,aes(x=year,y=gdpPercap))+geom_point()

## colour by country
ggplot(data=gapminder,aes(x=year,y=gdpPercap,color=country))+geom_point()
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap,color=country))+geom_point()

##line plots
ggplot(data=gapminder,aes(x=year,y=lifeExp,color=country))+geom_line()
ggplot(data=gapminder,aes(x=year,y=lifeExp,color=country))+geom_line()+geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp)+geom_line(aes(color=country))+geom_point(color="blue")

##transformaitons and statistics
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap))+geom_point()+
  scale_y_log10()+
  stat_smooth(method="lm")

ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap,colour=continent))+geom_point()+
  scale_y_log10()+
  stat_smooth(method="lm")

gm90 <- gapminder[gapminder$year > 1990,]
gm90
head(gm90)

ggplot(gm90,aes(x=lifeExp,y=gdpPercap))+
  geom_point()+
  scale_y_log10()+
  geom_smooth(method="lm")+
  facet_wrap(~year) 

ggplot(gm90,aes(x=lifeExp,y=gdpPercap))+
  geom_point()+
  scale_y_log10()+
  geom_smooth(method="lm")+
  facet_grid(continent~year)


