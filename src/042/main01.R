read_excel("ex042.xlsm") |>
  fill(everything(), .direction="down") |>
  drop_na() |>
  group_by(parse_number(詳細)) |>
  slice_head() |>
  ungroup() |>
  select(大項目:詳細) |>
  print()