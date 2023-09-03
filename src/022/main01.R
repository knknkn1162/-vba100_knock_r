1:100 |>
  as_tibble() |>
  mutate(v3 = if_else(value %% 3 == 0, "fizz", NA), v5 = if_else(value %% 5 == 0, "buzz", NA)) |>
  mutate(v15 = str_c(v3,v5)) |>
  print(n=Inf)