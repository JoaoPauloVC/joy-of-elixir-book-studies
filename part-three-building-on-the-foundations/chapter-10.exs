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
IO.puts "----------------------------------"

# Pipe operator

IO.puts "Pegar primeira pessoa de mapa com lista de seres"
attendees = %{
	people: ["Izzy", "The Author"],
	robot: ["Roboto", "TARS"]
}

attendees
|> IO.inspect(label: "Mapa Inicial:")
|> Map.get(:people)
|> IO.inspect(label: "Lista com pessoas:")
|> List.first()
|> IO.inspect(label: "Primeira Pessoa:")
IO.puts "----------------------------------"

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1) Use your newfound knownledge of the pipe operator to re-write
# your solution to chapter 8's first exercise

pergunta = fn string ->
	string |> IO.gets() |> String.trim()
end

IO.puts "EXERCÍCIO 1. Vamos contar uma história."
pessoa = pergunta.("1) Informe uma pessoa: ")
lugar = pergunta.("2) Informe um lugar: ")
objeto = pergunta.("3) Informe um objeto: ")
IO.puts("Foi o/a #{pessoa}, no/na #{lugar} com o/a #{objeto}!\n")
