read_excel("../ExcelVBAPractice.xls", sheet="練習3") |> rename(z = `...1`) |>
  pivot_longer(cols = -z, names_to="name", values_to="val") |>
  mutate(val = z * as.numeric(name)) |>
  pivot_wider(names_from=name, values_from=val) |>
  print()