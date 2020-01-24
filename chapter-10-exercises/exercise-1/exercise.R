# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
Seahawks_scores <- c(22, 19, 23, 17)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
Rivals_scores <- c(12, 25, 15, 15)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(Seahawks_scores, Rivals_scores, stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- Seahawks_scores - Rivals_scores
print(games)

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$diff > 0
print(games)

# Create a vector of the opponent names corresponding to the games played
opponent_names <- c("Broncos", "Vikings", "Chargers", "Raiders")

# Assign your dataframe rownames of their opponents
row.names(games) <- opponent_names

# View your data frame to see how it has changed!
View(games)
