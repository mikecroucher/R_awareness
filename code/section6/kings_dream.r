library(tictoc)

tic()
a <- -0.966918
b <- 2.879879
c <- .765145
d <- .744728
pointsToPlot <- 100000


x <- .1
y <- .1
allXs = rep(0,pointsToPlot)
allYs = rep(0,pointsToPlot)
for(i in 1:pointsToPlot) {
  newx <- sin(y*b) + c*sin(x*b)
  newy <- sin(x*a) + d*sin(y*a)
  x <- newx
  y <- newy
  allXs[i] <- x
  allYs[i] <- y
}
toc()

plot(allXs, allYs, pch=".", col="red",
     main="Strange Attractor: King's Dream")
