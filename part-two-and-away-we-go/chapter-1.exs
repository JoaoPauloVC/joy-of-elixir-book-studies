# -------------------------------
# --------- EXERCISES -----------
# -------------------------------

# 1)
# Get Elixir to calculate the number of seconds in the day by multiplying
# the horus in a day by 60 twice.

IO.puts("Exercício 1) Horas no dia: #{24 * 60 * 60}")

# 2)
# Calculate the avarage os these numbers: 4, 8, 15, 16, 23 and 42

list = [4, 8, 15, 16, 23, 42]
IO.puts("Exercício 2) A média é: #{Enum.sum(list) / Enum.count(list)}")
