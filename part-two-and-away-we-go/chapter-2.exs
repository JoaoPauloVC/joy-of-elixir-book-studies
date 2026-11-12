# -------------------------------
# --------- EXERCISES -----------
# -------------------------------

# 1)
# If we store the number of seconds in a day using this code: seconds = 86400.
# Calculate, using the variable, how many hours there are in 30 days.

seconds = 86400
IO.puts("Exercício 1: Horas no dia: #{round(seconds / 60 / 60 * 30)}")

# 2)
# Create a variable called "name", stroe a string in it and place the value of
# that variable in another string.

name = "Maria"
IO.puts("Estou interpolando variáveis, #{name}!!")

# 3)
# The line "5 / "four"" shows an error. Think about why this error might happen.

# Solution:
# 	iex(3)> 5/"four"
# 	** (ArithmeticError) bad argument in arithmetic expression: 5 / "four"
# 	    :erlang./(5, "four")
# 	    iex:3: (file)

# Answer: Erro pois estamos passando para / (divisão) uma string como dividendo, por isso "bad argument".
# A função / esperava um tipo numérico (integer, float).
