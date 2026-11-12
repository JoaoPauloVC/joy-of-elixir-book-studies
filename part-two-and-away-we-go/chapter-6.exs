# ------------------------------
# -------- EXERCISES -----------
# ------------------------------

# 1)

# Make a function that takes either a map containing a "name" and "age",
# or just a map containing "name". Change the output on if "age" is present.
# What happens if you switch the order of the function clauses?
# What can you learn from this?

fn_pattern_matching = fn
  %{name: name, age: age} ->
    IO.puts("Ola #{name}. Você passou um mapa com seu nome e sua idade #{age}!")

  %{name: name} ->
    IO.puts("Ola #{name}. Parece que você passou um mapa somente com seu nome.")

  _ ->
    IO.puts("Esse foi criado para não dar erro ao executar o script.")
end

# Lembrar de testar invertendo a ordem acima, para ver o que acontece com o pattern matching
IO.puts("EXERCÍCIO 1")
fn_pattern_matching.(%{name: "João", age: 32})
fn_pattern_matching.(%{name: "Maria"})
fn_pattern_matching.(%{age: 54})
fn_pattern_matching.(%{})
IO.puts("")

# Answer:
## Resposta funcionando. Ao inverter a ordem, percebemos que o pattern matching para de avaliar
## ao encontrar uma resposta. Ou seja, quando deixamos a clausula só com nome em cima, a cláusula
## de baixo nunca é alcançada, já que ela já é satisfeita ao reconhecer o campo "name".
