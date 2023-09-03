readline() |>
  str_split_1("[a-z]") |>
  as_tibble() |>
  filter(value != "") |>
  pull() |>
  str_flatten("-")