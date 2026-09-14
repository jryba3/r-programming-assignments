Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4,62,51,21,2,14,15)
CBS_poll <- c(12,75,43,19,1,21,19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
str(df_polls)
head(df_polls)
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)
median(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
library(ggplot2)
library(tidyr)
df_long <- pivot_longer(
  df_polls,
  cols = c(ABC_poll, CBS_poll),
  names_to = "Poll_Source",
  values_to = "Score"
)
ggplot(df_long, aes(x = Name, y = Score, fill = Poll_Source)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Candidate Comparison: ABC vs. CBS Polls",
    x = "Candidate Name",
    y = "Poll Score",
    fill = "Poll Source"
  ) +
  theme_minimal()
