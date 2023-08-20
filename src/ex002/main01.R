read_excel("../ExcelVBAPractice.xls", sheet="練習2") |> mutate(金額 = 数量 * 単価)
  |> print()