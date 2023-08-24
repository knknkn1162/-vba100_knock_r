read_excel("../ExcelVBAPractice.xls", sheet="練習12") |>
  unite(年, 月, 日, sep = "/", col = "日") |>
  mutate(曜日 = weekdays(ymd(日))) |>
  summarise(売上合計 = sum(売上), 日数 = n(), 平均売上 = sum(売上) / n(), .by=曜日) |>
  print()