df <- read_excel("VBA100_05.xlsm")
df |> mutate(金額 = 単価 * 点数)
print(df)