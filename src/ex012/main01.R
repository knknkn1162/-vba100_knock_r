read_excel("../ExcelVBAPractice.xls", sheet="練習12") |>
  mutate(曜日 = make_datetime(year=年, month=月, day=日) |> weekdays()) |>
  group_by(曜日) |>
  summarise(売上合計 = sum(売上), 日数 = n(), 平均売上 = sum(売上) / n()) |>
  print()