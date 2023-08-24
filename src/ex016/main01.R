df2 <- read_excel("../ExcelVBAPractice.xls", sheet="練習16_マスタ")
read_excel("../ExcelVBAPractice.xls", sheet="練習16", n_max=10) |>
  select(商品番号,数量,金額) |>
  inner_join(df2) |>
  mutate(金額 = 数量 * 単価) |>
  summarise(sum = sum(金額)) |>
  print()