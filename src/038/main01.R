holidays <- read_excel("VBA100_38.xlsm", sheet="祝日", col_names = c("date", "label")) |>
  pull(date)
read_excel("VBA100_38.xlsm") |>
  mutate(
    weekday = weekdays(日付),
    is_holiday = weekday %in% c("Saturday", "Sunday") | 日付 %in%  holidays,
    date = format(日付, "%Y/%m/%d")
  ) |>
  group_by(if_else(is_holiday, "祝日", "平日")) |>
  select(-weekday, -日付, -is_holiday) |>
  group_map(\(x,y) write_csv(x, str_glue("{y}.csv")))