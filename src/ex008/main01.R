read_excel("../ExcelVBAPractice.xls", sheet="練習8") |>
  mutate(day = format(日付, "%Y/%m/%d"), 金額 = 数量*単価, .after=日付) |>
  print()