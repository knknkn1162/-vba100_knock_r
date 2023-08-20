```
# 区分 == "D" has gone
read_excel("../ExcelVBAPractice.xls", sheet="練習14") |> filter(区分 == "I") |> rowwise() |> do(add_row(as_tibble(.), `№` = .$`№`, 区分="N")) |> ungroup()
```