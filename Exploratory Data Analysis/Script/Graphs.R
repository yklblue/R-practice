# Graphs

fileUrl <- "https://raw.githubusercontent.com/yklblue/courses/master/04_ExploratoryAnalysis/exploratoryGraphs/data/avgpm25.csv"
download.file(fileUrl, "./Data/avgpm25.csv")
pollution <- read.csv("./Data/avgpm25.csv", colClasses = c("numeric", "character", "factor", "numeric", "numeric"))
head(pollution)

# pm25 = annual mean averaged over 2008-2010
# fips = identifier column for identifying country

# Min. 1st Quartile. Median. Mean. 3rd Quartile. Max.
summary(pollution$pm25)

# boxplot/histogram
boxplot(pollution$pm25, col = "blue")
abline(h=12) # shows a line of threshold

hist(pollution$pm25, col = "green")
rug(pollution$pm25) # plots all the points of the histogram
abline(v=12, lwd=2) # shows a vertical line, line width 2

hist(pollution$pm25, col = "green", breaks = 100) # shows shape of the distribution better
rug(pollution$pm25)
abline(v=median(pollution$pm25), col="magenta", lwd=4)


# barplot
barplot(table(pollution$region), col = "wheat", main = "Number of Counties in Each Region")

# multiple boxplots
boxplot(pm25 ~ region, data = pollution, col = "red")

# multiple histograms
par(mfrow = c(1, 2), mar = c(5,4,2,1))
hist(subset(pollution, region == "east")$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")

# scatterplot
with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty) # horizontal line at y=12, line width = 2, dashed line

par(mfrow = c(1, 2), mar = c(5,4,2,1))
with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))
with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))

