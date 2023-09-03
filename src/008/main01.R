read_excel("VBA100_08.xlsm") |>
  rowwise() |>
  mutate(flag1 = if_all(英語:社会, \(x) x >= 50), flag2 = sum(c_across(英語:社会)) >= 350) |>
  mutate(合否判定 = if_else(flag1 & flag2, "合格", NA)) |>
  print()