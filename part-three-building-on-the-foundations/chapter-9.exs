# Testes during chapter

## A list of cities
["vienna", "melbourne", "osaka", "calgary", "sydney"]

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1) Use a combination of Enum.map/2 and String.replace/3 to replace
# all of the e's in these words with another letter of your choosing

list = ["a", "very", "fine", "collection", "of", "words", "enunciated"]

IO.puts("\nEXERCÍCIO 1")
IO.inspect(list, label: "Initial List")

list
|> Enum.map(fn element -> String.replace(element, "e", "M") end)
|> IO.inspect(label: "Final List")

IO.puts("")

# 2) Use Enum.reduce/2 to multiply the following numbers together:
# [5, 12, 9, 24, 9, 18]

numbers_to_multiply = [5, 12, 9, 24, 9, 18]
IO.puts("EXERCÍCIO 2")

IO.inspect(numbers_to_multiply, label: "Numbers to multiply")

numbers_to_multiply
|> Enum.reduce(fn number, acc ->
  IO.inspect({acc, number}, label: "Last Result and accumulator this round")
  number * acc
end)
|> IO.inspect(label: "\nFinal Result")

IO.puts("")
