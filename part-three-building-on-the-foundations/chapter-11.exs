# Tests during chapter

{:ok, reversed_haiku} = File.read("reversed-haiku.txt")

haiku =
  reversed_haiku
  |> String.split("\r\n")
  |> Enum.map(&String.reverse/1)
  |> Enum.join("\r\n")

case File.write("./haiku.txt", haiku) do
  :ok -> IO.puts("Arquivo criado com sucesso!")
  {:error, reason} -> {:error, reason}
end

IO.puts("Renomenado arquivo em 3")
Process.sleep(1000)
IO.puts("Renomenado arquivo em 2")
Process.sleep(1000)
IO.puts("Renomenado arquivo em 1")
Process.sleep(1000)

File.rename("haiku.txt", "haiku-1.txt")
IO.puts("Teste de renomear feito com sucesso!")

IO.puts("Apagando em 3")
Process.sleep(1000)
IO.puts("Apagando em 2")
Process.sleep(1000)
IO.puts("Apagando em 1")
Process.sleep(1000)
File.rm("./haiku-1.txt")

IO.puts("Agora o diretório está limpo para teste de novo")

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1) Can you make Elixir write a program for itself? Put this
# code into a file called script.ex with File.write/2:
# IO.puts("This file was generated from Elixir")
# Then, make it run by running "elixir chapter-11.exs"

## Some tweaks on the text from the book was made to represent the run of this file.
phrase = "IO.puts(\"This file was generated from Elixir\")"

case File.write("exercise-1-chapter-11.exs", phrase) do
  :ok -> IO.puts("Arquivo gerado")
  {:error, reason} -> {:error, reason}
end

# Lembre de rodar o arquivo gerado rodando no terminal o comando "elixir exercise-1-chapter-11.exs"
