x <- sample(x=1:100, size=100, replace=TRUE)

require(ggplot2)

cor(economics$pce, economics$psavert)
cor(economics[, c(2, 4:6)])
GGally::ggpairs(economics[, c(2, 4:6)], params=list(labelSize=8))

require(reshape2)
require(scales)
econCor <- cor(economics[, c(2, 4:6)])
econMelt <- melt(econCor, varnames=c("x", "y"), value.name="Correlation")
econMelt <- econMelt[order(econMelt$Correlation), ]

ggplot(econMelt, aes(x=x, y=y)) + geom_tile(aes(fill=Correlation)) + scale_fill_gradient2(low=muted("red"), mid="white", high="steelblue", guide=guide_colorbar(ticks=FALSE, barheight=10), limits=c(-1,1)) + theme_minimal() + labs(x=NULL, y=NULL)

data(tips, package="reshape2")
t.test(tips$tip, alternative="two.sided", mu=2.5)
t.test(tips$tip, alternative= "greater", mu=2.5)
t.test(tips$tip, alternative="two.sided", mu=2.998279)
aggregate(tip ~ sex, data=tips, var)
ggplot(tips, aes(x=tip, fill=sex)) + geom_histogram(binwidth=.5, alpha=1/2)
mean(tips$tip)
# Test der Varianz-Gleichheit
ansari.test(tip ~ sex, tips)
t.test(tip ~ sex, data = tips, var.equal = TRUE)

tipSummary <- ddply(tips, "sex", summarize,
                    + tip.mean=mean(tip), tip.sd=sd(tip),
                    + Lower=tip.mean-2*tip.sd/sqrt(NROW(tip)),
                    + Upper=tip.mean + 2*tip.sd/sqrt(NROW(tip)))
tipSummary
ggplot(tipSummary, aes(x=tip.mean, y=sex)) + geom_point() + geom_errorbarh(aes(xmin=Lower, xmax=Upper), height=.2)

require(UsingR)
t.test(father.son$fheight, father.son$sheight, paired=TRUE)

tipAnova <- aov(tip ~ day - 1, tips)
summary(tipAnova)
