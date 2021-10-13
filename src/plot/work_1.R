source("src/utils.R")
data = read.table("input/womenroles.txt", header=TRUE)
agg = better_aggregate(data, by=list(data$education, data$gender), FUN=length)
agg = agg[order(agg$Group.1),]
colors = c("black", "gray")
barplot(agg$vote, beside=TRUE, col=colors, legend.text=c("Female", "Male"), border=FALSE, names.arg=agg$Group.1)
