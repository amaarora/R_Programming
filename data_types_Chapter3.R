# -----CHAPTER 3-----

# Doubles
die <- c(1, 2, 3, 4, 5, 6)
typeof(die)

# Integers
int <- c(-1L, 2L, 4L)
typeof(int)

# Characters
text <- c("Hello", "World") 
typeof(text)

# Logicals
logic <- c(TRUE, FALSE, TRUE)
typeof(logic)

# Complex
comp<-c(1+1i,1+2i,1+3i)
typeof(comp)

hand <- c("ace", "king", "queen", "jack", "ten")
hand

# Attributes
## Names
names(die) <- c("one", "two", "three", "four", "five", "six")
attributes(die)
die
names(die) <- NULL
die

## Dim 
dim(die) <- c(2, 3)
die

dim(die) <- c(3, 2)
die

# Matrices
m <- matrix(die, nrow = 2)
m
m <- matrix(die, nrow = 2, byrow = TRUE)
m

### Exercise
hand <- c("ace", "king", "queen", "jack", "ten",
          replicate(5, "spades"))
dim(hand) <- c(5, 2)
hand

# Dates&Time
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)
now

mil <- 1000000 
mil
class(mil) <- c("POSIXct", "POSIXt") 
mil

# Factors
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)

# Lists
my_list <- list(die, hand, gender)
my_list
my_list[3]

# Data Frames
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), 
                 value = c(1, 2, 3))
df

# Import Data Frame from Internet
head(deck)

setwd(dir = "./data_scientist/R_Programming")
write.csv(deck, file = "cards.csv", row.names = FALSE)
getwd()