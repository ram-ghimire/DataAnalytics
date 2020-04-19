library(tidyverse)
gapminder <- read_csv("Data/gapminder.csv")
gapminder

aust_data <- gapminder %>% 
  select(country,year,pop) %>% 
  filter(country == "Australia") %>% 
  rename(population=pop)

gapminder %>% 
  rename(gdpPerCap=gdpPercap)
  select(country,year,gdpPerCap) %>% 
  filter(country != "Afghanistan") %>% 
    

cows <- data_frame(id=c(1,2,3),
  weight1=c(203,227,193),
  weight2=c(365,344,329))
  cows
  
  cows_long <- cows %>% 
  gather(measurement,weight,weight1,weight2)
  cows_long
  
  cows_wide <- cows_long %>% 
    spread(measurement,weight)
  cows_wide
  
  write_csv(cows_wide,"Data/cows_wide.csv")
  write_csv(cows_long,"Data/cows_long.csv")

  getwd()
  read_csv("Data/cows_wide.csv")
read_csv("Data/cows_long.csv")  

gap_wide <- read.csv("Data/gapminder_wide.csv")
gap_wide

gap_long <- gap_wide%>%
  gather(obstype_year,obs_values,starts_with('pop'),
         starts_with('lifeExp'),starts_with('gdpPercap'))
gap_long

gap_long1 <- gap_wide%>%
  gather(obstype_year,obs_values,-continent,-country)
gap_long1

gap_separated <- gap_long %>% 
  separate(obstype_year, into = c('obs_type','year'),sep = "_",convert = TRUE)
gap_separated

gap_separated %>% 
  unite(obstype_year, obs_type, year)

gap_orig <- gap_separated %>% 
  spread(obs_type,obs_values)
gap_orig

dim(gap_orig)

dim(gapminder)

gap_orig <- gap_orig %>% 
  arrange(country,continent,year) %>% 
  select(country,continent,year,lifeExp,pop,gdpPercap)
gap_orig

gapminder

library(tidyr)
tidyr::table4a
gather(table4a,key = year,value=TB_cases,-country)

tidyr::table2
spread(table2,key=type, value = count)

#missing data, with na_if function

missing <- data.frame(id= c("a","b","c"), value = c(10, -1, 20))
missing

missing %>%
  mutate(value=na_if(value,-1))

#Filling in implied values, fill the values from immediate past with fill () function

implied_id <- data_frame(
  id = c("a", NA, NA, "b", NA, NA),
value=c(12, 23, 18, 34, 23, 16)
)
implied_id

implied_id %>% 
  fill(id)

#Dealing with outliers with case_when function

outliers <- data_frame(
  id=c("a","b","c","d","e"),
  value=c(15,-2,19,9,35)
)
outliers

outliers %>% 
  mutate(clean_value=case_when(
    value<0~0,
    value>30~30,
    TRUE~value
  )
  )

write_csv(aust_data,path = "processed_data/aust_gapminder.csv")
  
# Date Types with typeof function

typeof(3.14)

typeof(1L)

typeof(1+1i)

typeof(TRUE)

typeof("banana")

#Dates with lubridate functions

library(lubridate)

today()

install.packages("lubridate")

now()

ymd("2020-04-19")

dmy("13-feb-2020")

mdy("February 2nd,2019")

