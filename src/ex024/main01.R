read_excel("../ExcelVBAPractice.xls", sheet="練習24") |>
  expand(分類A, 分類B, 分類C, 分類D) |>
  drop_na()