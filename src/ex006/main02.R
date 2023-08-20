read_excel("../ExcelVBAPractice.xls", sheet="練習6") |>
  summarize(sum = sum(数量 * 単価)) |>
  print()