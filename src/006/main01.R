read_excel("VBA100_06.xlsm") |>
  mutate(金額 = if_else(str_detect(商品コード, "-"), NA, 単価*点数)) |>
  print()