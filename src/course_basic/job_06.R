df = read.table("input/womenroles.txt", header=TRUE, sep=" ")
rows = nrow(df)
df_sampled = df[sample(1:rows, round(rows * 0.1, 0)), ]
write.table(df_sampled, file="input/womenroles2.txt", quote=FALSE, sep=" ", 
            row.names=FALSE)
