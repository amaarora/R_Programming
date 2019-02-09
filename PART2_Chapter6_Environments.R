# -----Chapter6-----
deal <- function() { 
  deck[1, ]
}
deal()

# does not update or remove card from deal
deal <- function() { 
  card <- deck[1, ] 
  deck <- deck[-1, ] 
  card
}
deal()

deck
DECK <- deck
# updates deck from globalenv and removes top card
deal <- function() {
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv()) 
  card
}
deal()

# update deck in global env
shuffle <- function(){
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}

