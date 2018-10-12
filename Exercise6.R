setwd("~/Documents/Biocomp/Biocomp-Fall2018-181005-Exercise6/") #Script will be saved in .git repository
rm(list=ls())  #clear variables

iris<-read.csv("iris.csv",stringsAsFactors = FALSE) #Reading in the iris file to R

#For Question 1
head(iris, 10) #print the first 10 rows to the console
### Brittni: We wanted you to recreate the functionality of head without using it. I took off 0.25 points, because you did still assign the variables. What we were looking for was something like:
## number=10
## iris[1:number,]

#For Question 2
#Print last two rows of last two columns
iris[c(149,150),c(4,5)] #Row,column--the last two rows are 149 and 150 while the last two columns are 4 and 5

#Count number of observations for each species
count(iris,Species) #First the data and then indicate the variable to group the characters by for counting
### Brittni: Make sure if you're using functions in other packages that you have them loaded in the script (ie library(plyr)).
### Also, this isn't working on my machine. I think you need to put Species in quotes. Did you use attach() with the Species column prior? 
### I took off 0.5 points. 

#Rows with sepal length greater than 3.5
iris[iris$Sepal.Width>3.5,] #Keeps only the data with iris fitting the logic Sepal.Width>3.5

#Make setosa.csv
setosa<-iris[iris$Species=="setosa",] #Create a data frame of just the setosa species
write.csv(setosa, "setosa.csv") #Write to a csv, will automatically go to the pwd

#Mean, min, and max Petal.Length for virginica
virginica<-iris[iris$Species=="virginica",] #Want to work with only the virginica species
summarise(virginica,Mean=mean(Petal.Length), #leaves just the new created variables, the first Mean is calculated by mean
            Min=min(Petal.Length), #min calculates the min and sets it equal to Min
            Max=max(Petal.Length)) #max calculates the max and sets it equal to Max






