c(7,3,8, 14, 11, 12, 1, 13, 4, 18) |>
  as_tibble() |>
  filter(value >= 10) |>
  summarize(sum = sum(value)) |>
  print()