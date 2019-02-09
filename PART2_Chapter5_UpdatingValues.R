# -----Chapter5-----
deck
deck2 <- deck

# Changing values in place
vec <- c(0, 0, 1)
vec[1] <- 100
vec

deck2$new <- 1:52
deck2
deck2$new <- NULL
deck2

deck2[c(13, 26, 39, 52), ]
# game: WAR
deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
deck2
deck2$value[c(13, 26, 39, 52)] <- c(1, 1, 1, 1)
deck2$Newvalue = deck2$value
deck2$Newvalue[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
deck2

ace_mask <- deck2$face == 'ace'
deck2[ace_mask, ]

deck3 <- shuffle(deck2)
ace_mask <- deck3$face == 'ace'
deck3[ace_mask, ]

# queen of spades
queen_mask <- deck$face == "queen"
spades_mask <- deck$suit == "spades"
deck[queen_mask&spades_mask, ]

# Blackjack
deck5 <- deck
facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard, ]$value <- 10
deck5

# Missing Values
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)

is.na(NA)
na_vec <- c(NA, 1:50)
is.na(na_vec)
