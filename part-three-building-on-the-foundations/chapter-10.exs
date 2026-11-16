# Testes during chapter

## A person
person = %{name: "Izzy", age: "30ish", gender: "Female"}
Enum.each(person, fn {key, value} -> IO.puts("vendo chave #{key} e valor #{value}") end)

## Tempature day by day
temp_por_dia = %{
  "segunda" => 28,
  "terca" => 29,
  "quarta" => 29,
  "quinta" => 24,
  "sexta" => 16,
  "sabado" => 16,
  "domingo" => 20
}

temp_por_dia
|> Enum.map(fn {dia, temp} -> {dia, temp * 1.8 + 32} end)
|> Enum.into(%{})
|> IO.inspect(label: "Mapa com chave e valor convertido para Farenheit")

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1) Use your newfound knownledge of the pipe operator to re-write
# your solution to chapter 8's first exercise

## The answer was already done (with earlier chapter too) on other notebook that need to push changes to repository
