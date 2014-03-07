require(ggplot2)

> randNorm <- rnorm(30000)
> randDensity <- dnorm(randNorm)

p <- ggplot(data.frame(x=randNorm, y=randDensity)) + aes(x=x, y=y) + geom_line() + labs(x="x", y="Density")

neg1Seq <- seq(from=min(randNorm), to=-1, by=.1)

lessThanNeg1 <- data.frame(x=neg1Seq, y=dnorm(neg1Seq))

p + geom_polygon(data=lessThanNeg1, aes(x=x, y=y))rnomr

lessThanNeg1 <- rbind(c(min(randNorm), 0), lessThanNeg1, c(max(lessThanNeg1$x), 0))

