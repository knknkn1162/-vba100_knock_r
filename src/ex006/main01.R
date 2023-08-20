read_excel("../ExcelVBAPractice.xls", sheet="練習6") |>
  mutate(金額 = 数量 * 単価)|>
  summarize(sum = sum(金額)) |>
  print()