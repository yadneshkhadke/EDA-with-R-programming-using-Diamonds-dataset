#package used for data analysis and manipulation package used to transform the and present the data
install.packages("tidyverse")
library(tidyverse)
#load the Dataset
data("diamonds")
#viewing the few rows of dataset
head(diamonds)
#summarizing the dataset I.E, describing its central tendancies
summary(diamonds)
#looking for the dimensions in the data
dim(diamonds)
#visluazing the data, First using scatter plot,carat vs price, AES()
ggplot(data=diamonds ,aes(x=carat,y=price,color=cut))+
geom_point()
#here we get to see if ideal cuts in diamonds get higher price.
#creating the histogram of price distribution
#create histogram of values for price
ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="steelblue", color="black") +
  ggtitle("Histogram of Price Values")
#create wisk plot of diamonds and price
ggplot(data=diamonds,aes(x=cut,y=price))+
  geom_boxplot(fill="yellow")
#creating the correlation of matrix
round(cor(diamonds[c("carat","depth","table","price","x","y","z")]),2)
#identifying the null values using sapply()to return result in form of array
sapply(diamonds,function(x)sum(is.na(x)))
