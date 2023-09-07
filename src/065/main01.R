tb <- read_excel("ex065.xlsm", sheet="フォーマット") |>
  mutate(side = if_else(文字形態 == "N", "left", "right"), pad = if_else(文字形態 == "N", "0", " "))

read_excel("ex065.xlsm") |>
  rowwise() |>
  summarise(across(everything(), \(x)
    # x: symbol, cur_column(): string
    str_pad(x,
      tb |> filter(項目名 == cur_column()) |> pull(桁数),
      tb |> filter(項目名 == cur_column()) |> pull(side),
      tb |> filter(項目名 == cur_column()) |> pull(pad)
    )),
    out = str_flatten(c_across(everything()))
  ) |>
  pull(out) |>
  print()