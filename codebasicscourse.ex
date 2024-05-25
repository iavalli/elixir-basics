# code samples from code-basics.com Elixir course (RU, EN)
# more Python-styled at the beginning, not a proper functional style, to be refactored later.

# 1
defmodule Solution do
  def hello do
    IO.puts("Hello, World!")
  end
end

# 2 - naming
# Modules' names: CamelCase [A-Z a-zA-Z, 0-9, _, and . for structure organization]
# variables' names: snake_case [a-zA-Z, 0-9, _, and ? or ! in the end]
# functions' names: same as variables, ? -

defmodule FirstModule do
  defmodule IsertedModule do
    ...
  end
end

defmodule SecondModule do
  ...
end

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

text = Solution.hello() # will work
text = Solution.text_for_hello() # will return an error - (UndefinedFunctionError)

#4 string operations.
# String concatenation: "string1" <> "string2"
# :ascii - applies upcase to latin letters,
# :default - to all letters where possible
# :greek - is used for Greek letters and context dependent
# :turkic - for dotless letters (for ex. in Turkish)
# function arity is the number of argments it accepts: join_and_upcase/2
# stdlib functions of Kernel for Integer, List, String can be used without "Kernel."
# Kernel docs - https://hexdocs.pm/elixir/Kernel.html#content

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
# and, or, not work only with true and false
true and true  # true
true and false # false
true or true   # true
true or false  # true
not true       # false
not false      # true

# relaxed operators &&, ||, ! work wuth any data type
42 && true   # true
false && nil # false
true || 42   # true
true || nil  # true
! nil        # true
! 42         # false

# && returns in successful case last truthy argument, otherwise returns first falsy argument
true && 42  # success, 42
42 && true  # success, true
false && 42 # unsuccessful, false
nil && 42   # unsuccessful, nil
42 && nil   # unsuccessful, nil
false && nil # false
nil && false # nil

# || - in successful case returns truthy argument, otherwise - last falsy.
42 || false  # 42
false || 42  # 42
nil || false # false
false || nil # nil

# ! - returns true or false for any argument
! 42    # false
! true  # false
! false # true
! nil   # true

# All logic operators are lazy
IO.puts("a") && IO.puts("b") # => a b
IO.puts("a") || IO.puts("b") # => a
true or IO.puts("b")         # true
false and IO.puts("b")       # false

# May be used to return errors
do_something() || IO.puts("error")

task: any? returns true if any of arguments is truthy (for booleans)
truthy? returns second argument if first argument is truthy (for any data type)
defmodule Solution do
  # BEGIN (write your solution here)
  def any?(a, b, c, d) do
    a or b or c or d
  end
  def truthy?(a, b) do
    a && b
  end
  # END
end

#7 attributes
# used for constants in module outside of the function, cannot be called outside of the module
defmodule MyModule do
  @magic_number 8

  def do_magic(num) do
    num * @magic_number
  end
end

MyModule.do_magic(10) # 80
MyModule.@magic_number # error

# may be changed in the module. Compilator takes the last attribute value
defmodule MyModule do
  @magic_number 8

  def cast_magic() do
    @magic_number
  end

  @magic_number 0

  def do_magic() do
    @magic_number
  end
end

MyModule.cast_magic() # 8
MyModule.do_magic() # 0

#special attributes for generating the documwntation
# @moduledoc - next line after defining the module
# @doc - a line before defining the function

defmodule MyModule do
  @moduledoc "My attributes exercise module."

  @magic_number 8

  @doc "Do some magic calculations."
  def do_magic(num) do
    num * @magic_number
  end
end

# attribute accumulation

defmodule MyModule do
  Module.register_attribute __MODULE__, :magic_values, accumulate: true

  @magic_values 8
  @magic_values :some
  @magic_values "hello"

  def do_magic() do
    @magic_values
  end
end

MyModule.do_magic # [8, :some, "hello"]

#task: define inside the module following attributes
# number_attr, value: 10
# boolean_attr, value: false
# hello_world_attr, value: "Hello, World!"

defmodule Solution do
  defmacro __using__(_) do
    quote do
      @number_attr 10

      @boolean_attr false

      @hello_world_attr "Hello, World!"
    end
  end
end


#8 Erlang interoperability
# All Erlang libraries may be used in Elixir code.
# Erlang modules are presented as atoms:
# :os , :timer

:timer.seconds(5)
# => 5000

:os.cmd(~c"whoami")
# => ~c"root\n"

:os.getenv(~c"SHELL")
# => ~c"/bin/zsh"

# To use Erlang modules, type in mix.exs
def deps do
  [{:png, github: "yuce/png"}]
end

#usage
png =
  :png.create(%{:size => {30, 30}, :mode => {:indexed, 8}, :file => file, :palette => palette})
#

# binary strings and character list
# in Elixir
is_list('Example') # => true
is_list("Example") # => false
is_binary("Example") # => true
<<"Example">> === "Example"  # => true

# in Erlang
is_list('Example'). # => false
is_list("Example"). # => true
is_binary("Example"). # => false
is_binary(<<"Example">>). # => true

# old Erlang libraries do not support binary strings
# Elixir strings should be turned to char lists using to_charlist function

#Erlang function for words counting doesn't work with binary string
:string.words("Hello World")  # error

#solution:
words = to_charlist("Hello World")
:string.words(words) # => 2

# or the same with sigel
:string.words(~c"Hello World") # => 2

# in Erlang, vars begin with A-Z and cannot be mutated (redefined).

# task: a function which turns hours to milliseconds
defmodule Solution do
  def hours_to_milliseconds(hours) do
    :timer.hours(hours)
  end

end


#9 Sigels
# ~c

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
