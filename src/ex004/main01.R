read_excel("../ExcelVBAPractice.xls", sheet="練習4") |>
  mutate(箱数 = 納品数 %/% 入数, バラ数 = 納品数 %% 入数) |>
  print()