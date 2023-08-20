read_excel("../ExcelVBAPractice.xls", sheet="練習15") |>
  group_by(支店, 分類) |>
  summarize(sum = sum(売上)) |>
  pivot_wider(names_from=支店, values_from=sum) |>
  print()