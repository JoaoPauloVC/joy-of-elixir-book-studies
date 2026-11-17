# From here on, there are no exercises.
# Using things from the book to study

# From last chapter (11).
# Tests during chapter CONDITIONAL CODE
## Subchapter CASE
IO.puts("Testando Condicional CASE:")

# {:ok, reversed_haiku} = File.read("reversed-haiku.txt")
# reversed_haiku =
#   case File.read("reversed-haiku.txt") do
#     {:ok, reversed_haiku} -> reversed_haiku
#     {:error, :enoent} -> IO.puts("Could not find file reversed-haiku.txt")
#     {:error, _} -> IO.puts("Something unexpected happened, please try again")
#   end

# haiku =
#   reversed_haiku
#   |> String.split("\r\n")
#   |> Enum.map(&String.reverse/1)
#   |> Enum.join("\r\n")

# case File.write("./haiku.txt", haiku) do
#   :ok -> IO.puts("Arquivo criado com sucesso!")
#   {:error, reason} -> {:error, reason}
# end

IO.puts("")
IO.puts("--------------------------------")
IO.puts("")

## Subchapter COND
IO.puts("Testando Condicional COND:")
num = 48

cond do
  num < 50 ->
    IO.puts("number #{num} is lower than fifty ")

  num == 50 ->
    IO.puts("number #{num} is equal than fifty ")

  num > 50 ->
    IO.puts("number #{num} is greater than fifty ")
end

IO.puts("")
IO.puts("--------------------------------")
IO.puts("")

## Subchapter IF, UNLESS e ELSE
IO.puts("Testando Condicionais IF, UNLESS e ELSE:")

num = 10

if num == 50 do
  IO.puts("O número é igual a 50")
else
  IO.puts("O número não é 50")
end

IO.puts("")
IO.puts("--------------------------------")
IO.puts("")

## Subchapter with
IO.puts("Testando Condicional WITH :")

### Getting file name from a map, lets say:
file_data = %{name: "reversed-haiku.txt"}

file_data |> Map.fetch(:name)

haiku =
  with {:ok, file_name} <- file_data |> Map.fetch(:name),
       {:ok, content} <- file_name |> File.read() do
    content
    |> String.split("\r\n")
    |> Enum.map(&String.reverse/1)
    |> Enum.join("\r\n")
  else
    :error -> IO.puts("Key :name not foun in file_data Map")
    {:error, :enoent} -> IO.puts("File not found")
    {:error, _} -> IO.puts("Something unexpected ocurred")
  end

case File.write("./haiku.txt", haiku) do
  :ok ->
    IO.puts("Arquivo criado com sucesso!")

  {:error, reason} ->
    {:error, reason}
end
