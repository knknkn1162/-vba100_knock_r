read_excel("ex091.xlsm", sheet = "勤怠") |>
  mutate(base = floor_date(出勤時刻, "day") + hours(9), start = if_else(base >= 出勤時刻, base, 出勤時刻)) |>
  mutate(duration = ((退勤時刻 - hours(8+1))- start) |> as.period() |> period_to_seconds()) |>
  mutate(duration = (duration %/% 60 * 60)) |>
  group_by(id, 年月 = format(日付, "%Y%m")) |>
  summarise(
    sum = sum(duration) %/% 1800 * 1800
  ) |>
  mutate(sum = sum |> seconds_to_period()) |>
  mutate(残業= str_glue("{h}:{m}", h = day(sum)*24+hour(sum), m = str_pad(minute(sum), 2, pad="0"))) |>
  print(n=Inf)