#libraries
library(tidyverse)

#initialize the file and the working directory
setwd("./midterm")
getwd()
data <- read.csv(file = "./data/GlobalMusicData.csv",
stringsAsFactors = FALSE
)

# create column names
columnNames  <- c( # nolint
    "TrackId",
    "TrackName",
    "TrackArtist",
    "TrackPopularity",
    "TrackAlbumId",
    "TrackAlbumName",
    "TrackAlbumReleaseDate",
    "PlayListId",
    "PlaylistName",
    "PlaylistGenre",
    "PlaylistSubGenre",
    "Danceability",
    "Energy",
    "Key",
    "Loudness",
    "Mode",
    "Speechiness",
    "Acousticness",
    "Instrumentalness",
    "Liveliness",
    "Valence",
    "Tempo",
    "Duration_ms"
)

colnames(data) <- columnNames
colnames(data)


# class creation

#top and bottom 5
head(data, 5)
tail(data, 5)



colSums(is.na(data))
which(is.na(data))


str(data)

summary(data)

hist(data$tempo)

NoDupes = data[!duplicated(as.list(data))]
FindDupes = data[duplicated(as.list(data))]
head(FindDupes)
head(NoDupes)

colSums(is.na(data))



