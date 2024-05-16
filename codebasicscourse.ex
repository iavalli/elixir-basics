# code samples from code-basics.com Elixir course (RU, EN)
# more Python-styled at the beginning, not a proper functional style, to be refactored later.

# 1
defmodule Solution do
  def hello do
    IO.puts("Hello, World!")
  end
end

# 2 - the same as no.1, defining modules
# 3
defmodule Solution do
  # BEGIN (write your solution here)
  def print_twice(value) do
    IO.puts(value)
    IO.puts(value)
  end
  # END
end

# one line syntax for short functions: "signature, do:"

  def hello, do: IO.puts("Hello, World!")

# private functions are defined with defp and
# are callable only inside their module (without pointing the module name):

defmodule Solution do
  def hello, do: IO.puts(text_for_hello())

  defp text_for_hello, do: "Hello, World"
end

#4 string operations.
# String concatenation: "string1" <> "string2"
# :ascii - applies upcase to latin letters,
# :default - to all letters where possible
# :greek - is used for Greek letters and context dependent
# :turkic - for dotless letters (for ex. in Turkish)

defmodule Solution do
  def join_and_upcase(str1, str2) do
    String.trim(String.upcase(str1 <> str2, :ascii))
    String.length(str1)
    String.split(str1, " ")
  end
end

#5 - math operators
# floats are implemented by IEEE 754 standard:
0.1 + 0.2 # 0.30000000000000004
20 + 22    # 42
20.0 + 22  # 42.0
50 - 8.0   # 42.0
2 * 16     # 32 int if both numbers are ints
4 * 16.0   # 64.0 float if any of two numbers is float
128 / 2    # 64.0 always float
64.0 / 4.0 # 16.0
div(a, b) # integer division
rem(a, b) # remainder of the division (modulo)

defmodule Solution do
  def do_math(a, b) do
    IO.puts((a + b)/ b)
    IO.puts(div(a, b))
    IO.puts(rem(b, a))
  end
end

#6 booleans and logic operators


#7 attributes

#8 Erlang interoperability
#9 Sigels
# Data types
#10 atoms and tuples
#11 lists
#12 dictionaries
# managing constructions
#13 pattern matching (FP killer feature)
#14 pattern matching for dictionaries
#15 case
#16 cond
#17 function clause
#18 pipe operator

#FP basics
#19 recursion
#20 recursive functions with accumulators
#21 immutable data structures
#22 anonymous functions

#Collections
#23 Reflection (отображение)
#24 Filtration
#25 Свертка
#26 Comprehension or list constructors
#27 Streams

#Structures & behavior
#28 Intro
#29 Type description
#30 Behavior
#31 Protocols
#32 Common protocols

#Errors handling
#33 Errors handling, exceptions
#34 Handling errors with tuples
#35 Operator with

#Processes
#36 Intro
#37 Processes inbox
#38 Process state
#39 Processes connectiion
#40 Tasks and agents
#41 Supervisors
#42 Processes registration
#43 GenServers

#Macros
#44 Intro
#45 Quote, unquote
#46 New opportunities
#47 Macros hygene
#48 AST, summing up
#49 Date and time
