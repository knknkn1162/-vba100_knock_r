read_excel("./ex053.xlsm") |>
  mutate(flag1 = 都道府県 == "東京都", flag2 = 性別 == "男", flag3 = time_length(interval(誕生日, today()), "year") > 35) |>
  mutate(if_else(flag1 & flag2 & flag3, "対象", NA)) |>
  print()