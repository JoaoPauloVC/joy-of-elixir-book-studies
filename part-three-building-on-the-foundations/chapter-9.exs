# Testes during chapter

## A list of cities
["vienna", "melbourne", "osaka", "calgary", "sydney"]

# ------------------------
# ------- EXERCISES ------
# ------------------------

# 1) Use a combination of Enum.map/2 and String.replace/3 to replace
# all of the e's in these words with another letter of your choosing

list = ["a", "very", "fine", "collection", "of", "words", "enunciated"]

IO.puts("EXERCÍCIO 1")
IO.inspect(list, label: "Initial List")

list
|> Enum.map(fn element -> String.replace(element, "e", "M") end)
|> IO.inspect(label: "Final List")
