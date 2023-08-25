# TODO: too complicated to solve
df <- read_excel("../ExcelVBAPractice.xls", sheet="練習29", range = cell_cols(1:2))
df2 <- read_excel("../ExcelVBAPractice.xls", sheet="練習29", range = cell_cols(4:5))
df2 <- df2 |> mutate(cum = pmax(0, cum - 1100), 出荷数 = pmax(0, 入荷数 - cum), 入荷数 = 入荷数 - 出荷数)
df_unit <- df2 |> filter(出荷数 > 0) |> select(ロット番号, 出荷数)