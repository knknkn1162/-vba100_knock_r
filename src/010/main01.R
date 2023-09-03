read_excel("VBA100_10.xlsm") |>
  filter(!is.na(受注数), (!str_detect(備考, "(削除|不要)") | is.na(備考)) ) |>
  print()