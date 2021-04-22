x <- rnorm(100)
hist(x)

y <- rnorm(100)
plot(x,y)

z <- rnorm(100)
plot(x,z)

plot(x,y)

# side 1: 5 lines of margin text available (down)
# side 2: 4 lines of margin text available (left)
# side 3: 4 lines of margin text available (up)
# side 4: 2 lines of margin text available (right)

par(mar=c(2,2,2,2))
plot(x,y) # you lose your label

par(mar=c(4,4,2,2))
plot(x,y)
plot(x,y, pch = 20) # solid circle
plot(x,y, pch=19)
plot(x,y, pch=2) # triangle
example(points)

x <- rnorm(100)
y <- rnorm(100)
plot(x,y, pch=20)
title("Scatterplot")
text(-2, -2, "Label")
legend("topleft", legend = "Data", pch=20)
fit <- lm(y~x)
abline(fit)
abline(fit, lwd = 3, col = "blue") # overwrites original line

z <- rpois(100,2)
par(mfrow = c(2, 1))
plot(x, y, pch=20)
plot(x, z, pch=19)

par("mar")
par(mar = c(2, 2, 1, 1))
plot(x, y, pch = 20)
plot(x, z, pch = 20)

par(mfrow = c(1, 2))
par(mar = c(4, 4, 2, 2))
plot(x, y, pch=20)
plot(x, z, pch=20)

par(mfrow = c(2,2))
plot(x, y)
plot(x, z)
plot(z, x)
plot(y, x)

par(mfcol = c(2, 2))
plot(x, y)
plot(x, z)
plot(z, x)
plot(y, x)

par(mfrow = c(1, 1))
x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2, 50, labels = c("Male", "Female"))
plot(x, y)
plot(x, y, type = "n") # make the plot, but don't put the data in there
# how to subset individual group data on the plot with different colors
points(x[g == "Male"], y[g == "Male"], col = "green")
points(x[g == "Female"], y[g == "Female"], col = "blue")

