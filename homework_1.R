setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
if (!require("pacman")) install.packages("pacman"); library(pacman)
p_load(dplyr,ggplot2,psych,stats,ggpubr)

#Load the Chatterjee–Price employee attitude dataset
#Each row is the proportion of favorable responses from a sample of employees at 30 companies
#for each column dimension
data("attitude")
#Take a look at the variables
colnames(attitude)
head(attitude)


#### Satisfaction with raises ####

#Get descriptives
psych::describe(attitude$raises)
#Create the histogram
hist(attitude$raises, main = 'Histogram of percent of employees satisfied with raises',
     xlab = "Percent satisfied")
#Create the boxplot
ggboxplot(attitude$raises, ylab="Percent satisfied", 
          xlab = "",
          title = "Percent of employees satisfied with raises")
#Create the QQPlot
qqnorm(attitude$raises, pch = 1, frame = FALSE)
qqline(attitude$raises, col = "steelblue", lwd = 2)

#### Satisfaction with handling of employee complaints ####

#Get descriptives
psych::describe(attitude$complaints)
#Create the histogram
hist(attitude$complaints, 
     main = 'Histogram of percent of employees satisfied with\nhandling of complaints',
     xlab = "Percent satisfied")

#Create the boxplot
ggboxplot(attitude$complaints, ylab="Percent satisfied", 
          xlab = "",
          title = "Percent of employees satisfied with\nhandling of complaints")
#Create the QQPlot
qqnorm(attitude$complaints, pch = 1, frame = FALSE)
qqline(attitude$complaints, col = "steelblue", lwd = 2)


