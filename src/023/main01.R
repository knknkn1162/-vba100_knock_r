v1 <- c("Sheet1", "Sheet2", "Sheet3", "Sheet4")
v2 <- c("Sheet1", "Sheet2", "Sheet4", "Sheet3")
setequal(v1, v2) |>
  print()