read_excel("../ExcelVBAPractice.xls", sheet="練習5") |>
  mutate(昨年比 = 今年売上 / 昨年売上) |>
  mutate(記号 = cut(昨年比*100, breaks = c(0,90,95,100,105, Inf), labels = c("D", "C", "B", "A", "S"), right=FALSE)) |>
  print()