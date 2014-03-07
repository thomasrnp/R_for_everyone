setwd("D:/02_Dokumente/27_Machine_Learning/R/")
acs <- read.table("acs_ny.csv", sep=",", header=TRUE, stringsAsFactors=FALSE)
testFrame <- data.frame(First=sample(1:10, 20, replace=TRUE),
                        + Second=sample(1:20, 20, replace=TRUE), Third=sample(1:10, 20, replace=TRUE), Fourth=factor(rep(c("Alice", "Bob", "Charlie", "David"),5)), Fifth=ordered(rep(c("Edward", "Frank", "Georgia", "Hank", "Isaac"), 4)), Sixth=rep(c("a", "b"), 10), stringsAsFactors=FALSE)
head(model.matrix(First ~ Second + Fourth + Fifth, testFrame))
