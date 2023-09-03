read_excel("./VBA100_25.xlsm") |>
  pivot_longer(-(部門:区分), names_to = "date", values_to = "value") |>
  fill(部門, .direction="down") |>
  mutate(date = as.numeric(date), date = excel_numeric_to_date(date)) |>
  print(n=Inf)