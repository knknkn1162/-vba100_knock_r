"\n無駄な\n\n改行を\n\n\n削除\n\n" |>
  str_split_1("\n") |>
  as_tibble() |>
  filter(value != "") |>
  pull(value) |>
  str_flatten("\n") |>
  print()