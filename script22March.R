seq(2,3,by=0.5)
seq(2,5,by=0.5)
rep(1:3,times=3)
rep(1:3,each=3)
c(2,4,6)
x <- 1:5
x[2:4]
x[-(3:4)]
x[c(2,3)]
x[x>=3]
x[x !=1]
x <- 1:6
x==1
x>=1
x !=7
x[2:4]
sin(1) #Trigonmetric function
log10(10)
exp(0.5)
1:5
2^(1:5)
x <- 1:5
2^x
ls()
log(x)
x <- 1/40
log(x)
x <- NA
x == NA
is.na(x)m
mass <- 47.5
age <- 122
mass <- mass*2.3
age <- age-20
mass>age
ls()
ls(all.names = TRUE)
ls
rm(x)
rm(list <- ls())
installed.packages()
update.packages()
library("tidyverse")
install.packages("tidyverse")
library("tidyverse")
?mutate
help("select")
?"<-"
vignette()
vignette(package="ggplot2")
??select
[r]
?dput
sessionInfo()
?(help)
?log()
?log_function
help(log())
sum(1:5,NA)
sum(1:5,NA,na.rm=FALSE)
gapminder <- read_csv("data/gapminder.csv")
gapminder
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
gapminder$lifeExp
gapminder$country
head(gapminder,5)
tail(gapminder,10)
glimpse(gapminder)
summary(gapminder)
gapminder_factor <- read_csv("data/gapminder.csv",col_types=cols(continent=col_factor()))
class(gapminder_factor$continent)
gapminder_factor$continent
levels(gapminder_factor$continent)
glimpse(gapminder_factor$continent)
class(storms)
Storms <- read_csv(storms)
nrow(storms)
ncol(storms)
colnames(storms)
library(readr)
Storms <- read_csv(storms.csv)
storms
select(gapminder,year, country,pop)
select(gapminder,1,3,4)
select(gapminder,-lifeExp,-pop)
select(gapminder,year:lifeExp)
select(gapminder,-(year:lifeExp))
just_population <- select(gapminder,year,country,pop)
just_population

#matrix
mtr=matrix(c(5:29),5,5)
mtr

mtr1=matrix(c(5:8), 4, 4)
mtr1

mtr <- matrix(c(7:10),4,4)
mtr

mtr3 <- matrix(c(1:5), 5, 5)
mtr3
