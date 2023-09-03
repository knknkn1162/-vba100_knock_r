readline() |>
  str_split_1("[a-z]") |>
  (\(x) x[str_length(x)!=0])() |>
  str_flatten("-")