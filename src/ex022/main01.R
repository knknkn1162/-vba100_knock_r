(1:6 * 3 - 1) |>
  map(\(n) {
    read_excel("../ExcelVBAPractice.xls", sheet="練習22", range = cell_limits(c(2, n), c(NA, n+2)), col_names = c("商品", "数量", "単価")) |>
      mutate(伝票番号 = row_number(), .before=1) |>
      drop_na()
    }) |>
  list_rbind() |>
  arrange(伝票番号) |>
  print(n=Inf)