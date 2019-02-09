# -----Chapter4-----

# Indexing Data Frame
head(deck)
## Positive Integers
deck[1, 1:3]

## Negative Integers
deck[-(2:52), 1:3]

## Blank Spaces
deck[1, ]

## Logical Values
deck[1, c(TRUE, TRUE, TRUE)]

## Names
deck[1, c("face", "suit", "value")]

# deal top card from deck
deal <- function(cards){
  cards[1, ]
}
deal(deck)

# shuffle deck
shuffle <- function(cards){
  random <- sample(1:52, 52)
  cards[random, ]
}
shuffle(deck)

# dollar sign
deck$value

