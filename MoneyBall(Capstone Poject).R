library(dplyr)
library(ggplot2)

# Importing the data
batting <- read.csv("Data/Batting.csv")
salaries <- read.csv("Data/Salaries.csv")

# Head of Data
head(batting)

# Summary of databases
summary(salaries)
summary(batting)

# Structure Of batting database
str(batting)
str(salaries)

# Batting Average
batting$BA <- batting$H / batting$AB
tail(batting$BA, 5)

# On Base Percentage
batting$OBP <- (batting$H + batting$BB + batting$HBP) /
  (batting$AB + batting$BB + batting$HBP + batting$SF)

# Singles
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR

# Slugging Percentage
batting$SLG <- (batting$X1B + (2 * batting$X2B) + (3 * batting$X3B) + (4 * batting$HR)) / batting$AB

# Since Batting Starts from 1871 and Salaries start from 1985 we subset batting dataframe
batting <- batting %>% subset(yearID >= 1985)

# Merging Batting Data and Salaries Data
combo <- merge(batting, salaries, by = c("playerID", "yearID"))

# Summary
summary(combo)

# Analyzing the Lost Players
# As previously mentioned, the Oakland A's lost 3 key players during the
# off-season. We'll want to get their stats to see what we have to replace.
# The players lost were: first baseman 2000 AL MVP Jason Giambi (giambja01) to
# the New York Yankees, outfielder Johnny Damon (damonjo01) to the Boston Red Sox
# and infielder Rainer Gustavo "Ray" Olmedo ('saenzol01').
lost_players <- subset(combo, playerID %in% c("giambja01", "damonjo01", "saenzol01"))

# Since all these players were lost in after 2001 in the offseason,
# let's only concern ourselves with the data from 2001.
lost_players <- subset(lost_players, yearID == 2001)
lost_players[, c("playerID", "H", "X2B", "X3B", "HR", "OBP", "SLG", "BA", "AB")]

# Available Players
avail.players <- filter(combo, yearID == 2001)

# OBP vs Salary Plot For Available Players
ggplot(avail.players, aes(x = OBP, y = salary)) +
  geom_point()


# Conditions
# The total combined salary of the three players can not exceed 15 million dollars.
# Their combined number of At Bats (AB) needs to be equal to or greater than the lost players.
# Their mean OBP had to equal to or greater than the mean OBP of the lost players

# Filterring The Players
avail.players <- filter(avail.players, OBP >= mean(lost_players$OBP), salary <= 5000000,AB>=sum(lost_players$AB)/3)


# Arranging possible players
possible <- avail.players %>%
  arrange(desc(OBP)) %>%
  head()

# Possible Recruits
possible <- possible[, c("playerID", "OBP", "AB", "salary")]

# Can't choose giambja again, but the other ones look good (2-4). I choose them!
possible[2:4,]

# Checking Their Total Salary
sum(possible[2:4,]$salary)
