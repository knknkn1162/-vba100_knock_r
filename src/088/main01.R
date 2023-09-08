read_excel("ex088.xlsm", sheet="商品マスタ") |>
  inner_join(read_excel("ex088.xlsm", sheet="data")) |>
  mutate(仕入金額 = 仕入単価 * 数量, 売上金額 = 販売単価 * 数量, 粗利金額 = 売上金額 - 仕入金額) |>
  arrange(desc(売上金額)) |>
  mutate(sales_per = cumsum(売上金額) / sum(売上金額)) |>
  mutate(売上ABC = cut(sales_per*100, breaks = c(0, 50,90,Inf), labels = c("A", "B", "C"))) |>
  arrange(desc(粗利金額)) |>
  mutate(profit_per = cumsum(粗利金額) / sum(粗利金額)) |>
  mutate(粗利ABC = cut(profit_per*100, breaks = c(0, 50,90,Inf), labels = c("A", "B", "C"))) |>
  arrange(sales_per) |>
  print(n=Inf)