use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")
include csv
knifekill = load-table:
  a :: String,
  b :: String,
  c :: String,
  d :: String,
  e :: String,
  f :: String,
  g :: String,
  h :: String,
  i :: String,
  j :: String,
  k :: String
  source: csv-table-url("https://data.london.gov.uk/download/e5n6w/qbc/M1045_MonthlyCrimeDashboard_KnifeCrimeData.csv",default-options)
end
get-column(get-row(knifekill,7),"a")
table-length(knifekill)