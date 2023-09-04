tb <- read_excel("./VBA100_36.xlsm")
sorted_names <- tb |>
  colnames() |>
  as_tibble() |>
  mutate(val = parse_number(value)) |>
  arrange(val) |>
  pull(value)
tb |>
  # Using an external vector in selections was deprecated in tidyselect 1.1.0.
  ## Please use `all_of()` or `any_of()` instead.
  select(all_of(sorted_names)) |>
  print()