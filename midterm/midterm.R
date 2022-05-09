data = read.csv(file = "GlobalMusicData.csv",
stringsAsFactors = FALSE
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
