read_excel("VBA100_39.xlsm", col_names=c("a", "b")) |>
  pivot_longer(a:b, names_to = "label", values_to = "value") |>
  drop_na() |>
  distinct(value) |>
  arrange(value) |>
  pull(value) |>
  print()