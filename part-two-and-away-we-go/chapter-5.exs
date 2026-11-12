# -------------------------------
# --------- EXERCISES -----------
# -------------------------------

# 1)
# Make a function which turn Fahrenheit temperatures into Celsius.
# OBS: Fazendo com funçaõ anônima pois foi o caminho ensinado no livro neste ponto.
f_to_c = fn temp ->
  temp_in_c = (temp - 32) / 1.8
  IO.puts("Temperaturatura de #{temp}° Farenheit é igual a #{Float.round(temp_in_c, 2)}° Celsius")
end

IO.puts("EXERCÍCIO 1")
f_to_c.(86)
f_to_c.(232)
f_to_c.(120)
IO.puts("")

# 2)
# Make a function which returns the number of seconds in the specified
# amount of days. For example, seconds.(2) should tell us how many seconds
# there are in 2 days.

seconds_in_n_days = fn n ->
  seconds_in_a_day = 24 * 60 * 60
  IO.puts("The number of seconds in #{n} days is: #{seconds_in_a_day * n} seconds")
end

IO.puts("EXERCÍCIO 2")
seconds_in_n_days.(1)
seconds_in_n_days.(3)
seconds_in_n_days.(10)
IO.puts("")

# 3)
# Make a function which takes two maps with "age" keys in them and returns the avarage age.

age_avg = fn %{age: age1}, %{age: age2} ->
  IO.puts("A média das duas idades é: #{(age1 + age2) / 2}")
end

IO.puts("EXERCÍCIO 3")
age_avg.(%{age: 16, teste: "chave_valor_a_mais"}, %{age: 34})
age_avg.(%{age: 57}, %{age: 43, nao: "importa"})
age_avg.(%{age: 69, chave1: 49}, %{age: 75, chave2: "string"})
IO.puts("")
