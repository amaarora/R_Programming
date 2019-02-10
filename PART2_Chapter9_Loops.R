die <- c(1:6)
rolls <- expand.grid(die, die)
rolls$value <- rolls$Var1 + rolls$Var2
rolls

# Expected value of loaded die
prob<-c("1"=1/8,"2"=1/8,"3"=1/8,"4"=1/8,"5"=1/8,"6"=3/8)
rolls$prob1 <- prob[rolls$Var1]
rolls$prob2 <- prob[rolls$Var2]
rolls$prob <- rolls$prob1 * rolls$prob2
head(rolls, 3)
sum(rolls$value * rolls$prob)

# Expected value of slot machine 
wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combos <- expand.grid(wheel, wheel, wheel, 
                      stringsAsFactors = FALSE)

prob <- c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06,
          "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)
combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]

combos$prob <- combos$prob1 * combos$prob2 * combos$prob3
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3]) 
  combos$prize[i] <- score(symbols)
}
sum(combos$prize * combos$prob)
head(combos, 3)
