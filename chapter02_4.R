# 身近な統計('12) 第2章 図表2-4 度数分布表

# データが少ないので、ここではプログラムに直接データを書きます。

grade <- c("A", "B", "C", "D")         # 成績
freq <- c(10, 16, 10, 4)               # 度数
freq_table <- data.frame(grade, freq)  # データフレームにします。

# いろいろな方法でデータフレームの列を追加してみました。
freq_table <- transform(freq_table, cum_freq = cumsum(freq))  # 累積度数を追加
freq_table <- cbind(freq_table, rel_freq = freq / sum(freq))  # 相対度数を追加
freq_table$cum_rel_freq <- freq_table$cum_freq / sum(freq)    # 累積相対度数を追加

write.csv(freq_table, "chapter02_4.csv", row.names = FALSE)   # テーブルを保存
