#This script does the following: Reads data in for Afganistan for gapminder testing
#Written by Nick Chadeayne: nrchade@gmail.com
#4.18.15

gap <- read.csv('AFGAN.csv', header = TRUE)

#sanity check
head(gap)
summary(gap)
str(gap)
mean(gap$lifeExp, na.rm = TRUE)
plot(x = gap$year, 
     y = gap$lifeExp, 
     col = 'green', 
     main = 'Meh Plot!', 
     #type ='b', 
     xlab = 'Year', 
     ylab = 'Life Expectancy')
lines(x = gap$year, 
      y = gap$lifeExp)

hist(gap$pop, breaks = nrow(gap)*.5)

