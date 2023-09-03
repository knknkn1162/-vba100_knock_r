read_excel("VBA100_11.xlsm") |>
  fill(金額, .direction="down") |>
  group_by(金額) |>
  mutate(金額a = 金額 %/% n(), 端数 = (金額 %% n())) |>
  group_map(\(x,y) mutate(x, 金額b = 金額a + (x$端数 >= cur_group_rows()))) |>
  list_rbind() |>
  arrange(中項目) |>
  mutate(金額 = 金額b) |>
  select(大項目, 中項目, 金額) |>
  print()