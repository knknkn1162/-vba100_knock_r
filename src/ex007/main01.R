read_excel("../ExcelVBAPractice.xls", sheet="練習7") |>
  summarize(sum = sum(数量*単価), ave = sum / n()) |>
  print()