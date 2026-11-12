# Testes during chapter

## Taking input and making output

name = IO.gets("Diga seu nome: ") |> String.trim()
age = IO.gets("E sua idade: ")

IO.puts("Olá #{name}. Pelo que vi, você tem #{String.trim(age)} anos, é isso mesmo?\n")

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1)
# Make a program that generates a very short story. Get it to take some input:
# a person, a place and an object -- using IO.gest/1 and combine all three into
# a little sentence, output with IO.puts/1.

IO.puts("EXERCÍCIO 1. Vamos contar uma história.")
pessoa = IO.gets("1) Informe uma pessoa: ") |> String.trim()
lugar = IO.gets("2) Informe um lugar: ") |> String.trim()
objeto = IO.gets("3) Informe um objeto: ") |> String.trim()
IO.puts("Foi o/a #{pessoa}, no/na #{lugar} com o/a #{objeto}!\n")

# 2)
# Ponder on what happens when you remove the IO.puts from the beggining of Line 8
# in the first part (you can run the script and comment it if you want). Think
# about how this would be different if you put that code into and iex prompt.
