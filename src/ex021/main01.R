read_excel("../ExcelVBAPractice.xls", sheet="練習21", range = cell_cols(1:2)) |>
  group_by(都道府県) |>
  summarize(sum = sum(売上)) |>
  print()