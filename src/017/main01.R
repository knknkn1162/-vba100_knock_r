read_excel("VBA100_17.xlsm") |>
  select(部コード:課名称) |>
  distinct() |>
  arrange(部コード) |>
  print()