library(ggplot2)

# Dice roll simulation
roll <- function(die=1:6){
  dice <- sample(x = die, size = 2, replace = TRUE)
  sum(dice)
}
roll()

# First qplot for cubic function
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1) 
y <- x^3
qplot(x, y)

# First histogram
x<-c(1,2,2,2,3,3) 
qplot(x, binwidth = 1)

# Replicate command 
rolls <- replicate(n = 10000, roll())
qplot(rolls, binwidth=1)

# Weighted dice
roll <- function(die=1:6){
  prob <- c(replicate(5, 1/8), 3/8)
  dice <- sample(x = die, size = 2, replace = TRUE, 
                 prob = prob)
  sum(dice)
}
weighted_rolls <- replicate(10000, roll())
qplot(weighted_rolls, binwidth=1)

