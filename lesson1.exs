defmodule HelloWorld do
  def run(str1, str2) do
    str1 |>
    String.reverse() |>
    String.upcase() |>
    IO.inspect()
    str2 |> IO.inspect()
  end
end

# of there would be only 1 str argument, callinf a function would be:  HelloWorld.run("Hello world!")
# in case the function accepts two arguments: arg1 |> module.function(arg2)
"Hello world!" |> HelloWorld.run("second string")

# |>  is a pipe operator. An argument str is sent |> to the function(s)
# running in CLI: $ elixir lesson1.exs

# variables have no type annotation in Elixir. Define, then call a var.
# var names: snake_case, begins with lowcase letter or _ . Ends with lowcase or _ or ! or ?
# var may be changed but stick to not the initial data type.

# Numbers
integer_number = 10
float_number = 13.5
exponential_number = 0.234e4
million = 1_000_000
hex = 0xfa
octal_number = 0o37
binal = 0b010101


a = integer_number
b = float_number
c = million
d = 10.0

# Math operations
a + b
a * b
c / a # division with "/" always returns a float, even for 2 int vars
c / b
div(c, a) # integer division returns integer number
rem(c, b) # returns  remainder of the division

# Atoms - constants name in UTF-8 is its value
a = :one # assigns an atom to the var. The var saves the link to the atoms place in the table.
# another var with the same atom will save the same link to the same atom.
# One atom is unique in the program.
# Comparing atoms is very quick. They can be used as keys etc.

#Boolean
# booleans are actually atoms with a syntax sugar
:true == true
:false == false
a < b # true
b > a # true
a <= c # true
c >= b # true
a == d # 10 == 10.0 returns true
a === d # returns false
a < :true # true
a < :false # false
# atom names in snake_case may include "_" and also ! or ? at the end
:atom?
:atom_name!

# nil value means no value, the same as null in Python, and it's also a sintax sugar for :nil atom
nil == :nil
