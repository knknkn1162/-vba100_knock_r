read_excel("../ExcelVBAPractice.xls", sheet="練習20") |>
  select(1,2) |>
  mutate(month = format(日付, "%Y/%m")) |>
  group_by(month) |>
  summarize(sum = sum(売上)) |>
  print()