n <- readline() |> parse_number()
1:22 |>
  as_tibble() |>
  mutate(flag = value %in% c(1,2,3,5,8,9,11,12,13,14,15,17,19,20,21,22) ) |>
  mutate(v = consecutive_id(flag)) |>
  filter(flag) |>
  group_by(v) |>
  summarise(x=first(value), y=last(value), z = y-x) |>
  rowwise() |>
  mutate(str = if_else(z < (n-1), str_flatten(x:y,","), str_glue("{x}-{y}"))) |>
  pull(str) |>
  str_flatten(",") |>
  print()