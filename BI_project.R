data <- read.csv("C:/Users/fahad/OneDrive/Desktop/Mental health_Music.csv")
library(dplyr)
str(data)
summary(data)
sum(is.na(data))
colSums(is.na(data))
library(tidyverse)
#Removing rows with no age
data = data %>%
  filter(!is.na(Age))
hist(data$Age)
#Removing rows with NAs in BPM
data = data %>%
  filter(!is.na(BPM))
str(data)
library("e1071")
data$Age = exp(data$Age)
skewness(data$Age)
#Converting all categorical variables into factors
data <- data %>%
  mutate_at(vars(starts_with("Frequency")), as.factor)
str(data)
#Converting target variable into binary
data <- data %>%
  mutate(Music.effects = ifelse(Music.effects == "Improve", 1, 0))
data$Music.effects = as.factor(data$Music.effects == 1)
str(data)
#Checking number of people who reported improved and not improved mental health levels.
data$Music.effects
table(data$Music.effects)
#Checking exactly which age group had and didn't have an improvement in mental health
ggplot(data, aes(x = Age, y = Music.effects)) +
  geom_point(aes(color = Music.effects),) + 
  labs(title = "Relationship between Age and Mental Health Effect",
       x = "Age",
       y = "Mental Health Effect") +
  theme_minimal()

#Checking which streaming service did respondents most frequently listen to
ditribution <- table(data$Primary.streaming.service)
lbls <- paste(names(ditribution))

ggplot(data, aes(x = Primary.streaming.service, fill = Music.effects)) +
  geom_bar(stat = "count", position = "dodge") + 
  labs(title = "Count of Mental Health Effects by Streaming Service",
       x = "Streaming Service",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  geom_text(stat='count', aes(label=..count..), position=position_dodge(width=0.9), vjust=-0.25)

#Highlighting BPM levels where mental health improvement was mostly shown
improved_data <- data %>%
  filter(Music.effects == TRUE)
summary(improved_data)
ggplot(improved_data, aes(x = BPM)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black")
  labs(title = "Distribution of BPM Among Individuals Reporting Improved Mental Health",
       x = "Beats Per Minute (BPM)",
       y = "Count") +
  theme_minimal()

#Level of mental health issues for all respondents

boxplot(Anxiety~Music.effects,data=data, main="Reported Anxiety levels of all respondents",
          xlab="Mental health level", ylab="Anxiety Level")
boxplot(OCD~Music.effects,data=data, main="Reported OCD levels of all respondents",
        xlab="Mental health level", ylab="OCD Level")
boxplot(Depression~Music.effects,data=data, main="Reported Depression levels of all respondents",
        xlab="Mental health level", ylab="Depression level")
boxplot(Insomnia~Music.effects,data=data, main="Reported Insomnia levels of all respondents",
        xlab="Mental health level", ylab="Insomnia level")

improved_data$Hours_Range <- cut(improved_data$`Hours.per.day`, 
                                    breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Inf),
                                    labels = c("0-1", "1-2", "2-3", "3-4", "4-5", "5-6", "6-7", "7-8", "8-9", "9-10", "10+"),
                                    right = FALSE, include.lowest = TRUE)

#Number of hours people spend in listening to music who reported improvements in mental health
improved_data$Hours_Range <- cut(improved_data$`Hours.per.day`, 
                                    breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Inf),
                                    labels = c("0-1", "1-2", "2-3", "3-4", "4-5", "5-6", "6-7", "7-8", "8-9", "9-10", "10+"),
                                    right = FALSE, include.lowest = TRUE)

hours_summary <- improved_data %>%
  group_by(Hours_Range) %>%
  summarise(Count = n())

# Plot
ggplot(hours_summary, aes(x = Hours_Range, y = Count, fill = Hours_Range)) +
  geom_bar(stat = "identity") +
  labs(title = "Reported Mental Health Improvement by Hours of Music Listening",
       x = "Hours of Music Listening",
       y = "Count of Improvement Reports") +
  scale_fill_brewer(palette = "Blues") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Pie chart of distribution of people with improved and not improved mental health levels
mental_health_data <- data.frame(
  Effects = c("Not Improved", "Improved"),
  Count = c(158, 471)
)


mental_health_data$Percentage <- mental_health_data$Count / sum(mental_health_data$Count) * 100


ggplot(mental_health_data, aes(x = "", y = Percentage, fill = Effects)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +  
  geom_text(aes(label = sprintf("%s (%s%%)", Count, round(Percentage, 1))), position = position_stack(vjust = 0.5)) +
  labs(title = "Mental Health Improvement Distribution", x = NULL, y = NULL) +
  theme_void() +
  theme(legend.title = element_blank())

improved_data <- data %>%
  filter(Music.effects == "Improve" | Music.effects == TRUE)

# Count the number of respondents who listen to foreign languages and calculate percentages
foreign_language_summary <- improved_data %>%
  count(Foreign.languages) %>%
  mutate(Percentage = n / sum(n) * 100)

# Create a pie chart with percentages using ggplot2
ggplot(foreign_language_summary, aes(x = "", y = Percentage, fill = Foreign.languages)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  geom_text(aes(label = sprintf("%s\n(%s%%)", n, round(Percentage, 1))), position = position_stack(vjust = 0.5)) +
  labs(title = "Foreign Language Music Listening Among Improved Respondents", x = NULL, y = NULL) +
  theme_void() +
  scale_fill_manual(values = c("Yes" = "blue", "No" = "red"))

survey_data <- data %>%
  filter(complete.cases(.))

# Converting categorical variables to factors
categorical_vars <- c("Primary.streaming.service", "Fav.genre", "Frequency..Country.",
                      "Frequency..EDM.", "Frequency..Folk.", "Frequency..Gospel.",
                      "Frequency..Hip.hop.", "Frequency..Jazz.", "Frequency..K.pop.",
                      "Frequency..Latin.", "Frequency..Lofi.", "Frequency..Metal.",
                      "Frequency..Pop.", "Frequency..R.B.", "Frequency..Rap.",
                      "Frequency..Rock.", "Frequency..Video.game.music.")
survey_data[categorical_vars] <- lapply(survey_data[categorical_vars], as.factor)

# Assuming 'Music effects' needs to be a binary outcome for logistic regression
survey_data$Music_effects_binary <- ifelse(survey_data$Music.effects == "Improve", 1, 0)




####modified version

data$Primary.streaming.service <- as.factor(data$Primary.streaming.service)
data$Fav.genre <- as.factor(data$Fav.genre)
data$Music.effects <- factor(data$Music.effects, levels = c("No", "Yes")) 

# Logistic Regression Model
model_simple <- glm(Music.effects ~ Age + Primary.streaming.service + Hours.per.day + 
                      Fav.genre + BPM + Anxiety + Depression + Insomnia + OCD,
                    family = binomial(link = "logit"), data = survey_data)

# Summary of the model
summary(model_simple)


