ntile(x = 1:10, n = 5) |>
  as_tibble() |>
  filter(row_number() %% 2 == 0) |>
  print()