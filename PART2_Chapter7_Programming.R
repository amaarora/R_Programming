# -----Chapter7-----
get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0") 
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}


#  PRIZE CRITERIA
# 1. Three of the same type of symbol 
# (except for three zeroes)
# 2. Three bars (of mixed variety)
# 3. One or more cherries


score <- function(symbols){
  # Identify Case from slot machine
  same <- length(unique(symbols) == 1)
  bars <- (symbols %in% c("B", "BBB", "BB"))
  
  # Assign Prize
  if (same==1) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, 
                 "BB" = 25, "B"=10, "C"=10, "0"=0) 
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) { 
    prize <- 5
  } else {
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds
}

play <- function() {
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}

