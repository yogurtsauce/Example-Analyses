#libraries
library(tidyverse)

#initialize the file and the working directory
setwd("./midterm")
getwd()
data <- read.csv(file = "./data/GlobalMusicData.csv",
stringsAsFactors = FALSE
)

# change column names
columnNames  <- c( # nolint
    ""
)

head(data, 5)
tail(data, 5)

colnames(data)
colSums(is.na(data))

str(data)

summary(data)

hist(data$tempo)

NoDupes = data[!duplicated(as.list(data))]
FindDupes = data[duplicated(as.list(data))]
head(FindDupes)
head(NoDupes)

colSums(is.na(data))


which(is.na(data))
