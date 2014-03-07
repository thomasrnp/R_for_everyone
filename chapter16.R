setwd("D:/02_Dokumente/27_Machine_Learning/R/")

require(UsingR)
require(ggplot2)
ggplot(father.son, aes(x=fheight, y=sheight))+geom_point() + geom_smooth(method="lm") + labs(x="Fahters", y="Sons")
heightsLM <- lm(sheight ~ fheight, data=father.son)

housing <- read.table("housing.csv", sep=",", header=TRUE, stringsAsFactors=FALSE)
names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt", "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt", "NetIncome", "Value", "ValuePerSqFt", "Boro")
ggplot(housing, aes(x=ValuePerSqFt)) + geom_histogram(binwidth=10) + labs(x="Value per Square Foot")

ggplot(housing, aes(x=ValuePerSqFt, fill=Boro)) + geom_histogram(binwidth=10) + labs(x="Value per Square Foot")
ggplot(housing, aes(x=ValuePerSqFt, fill=Boro)) + geom_histogram(binwidth=10) + labs(x="Value per Square Foot") + facet_wrap(~Boro)

housing <- housing[housing$Units < 1000, ]
1+3
