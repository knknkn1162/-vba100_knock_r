read_excel("../ExcelVBAPractice.xls", sheet="練習6") |>
  count(wt = 数量*単価) |>
  print()