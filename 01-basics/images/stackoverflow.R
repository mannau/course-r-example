url <- "https://data.stackexchange.com/stackoverflow/csv/437426"
dat <- read.csv(url)
dat$Month <- as.Date(dat$Month)
saveRDS(dat, "stackoverflow.rds")
