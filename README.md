# elixir-basics
The code is based on the free Elixir course(RU) produced by Ilya Krukowski: 
https://www.youtube.com/playlist?list=PLWlFXymvoaJ_SWXOOm2JSqv86ZBkQ9-zo

Author's code and Github:
https://github.com/bodrovis-learning/Elixir-YT-Series/tree/master

Content by lessons:

1. Intro, data types and functional programming
2. Pattern matching
3. Modules, functions, r, margin conditions
4. Recursion, list, head, tail, tail optimization
5. Lambda, higher order functions, Matrix style output
6. Branching, errors, data structures, kw lists
7. Processes, monitors, spawn, spawn)link, practice
8. Long running server processes
9. Transfers, enum, stream, list inclusions
10. OTP, GenServer, callbacks, mix, game of stones
11. Protocols, polymorphism
12. Metaprogramming, macroses, quote/unqoute, dinamic connection, AST

Why not a fork of the original code? Because the best way to follow the course is 
to experiment in CLI or IDE by yourself.
Use ElixirLS extension for VSCode or bash $ iex 
after installing:

https://elixir-lang.org/install.html - install Elixir
https://www.erlang.org/downloads - install Erlang/OTP (if it didn't come with the Elixir installation)

The course is recorded in Russian, but in this repo everything will be in English.
I hope to add some useful comments and some info from other learning sources (which will be listed below).

WHY ELIXIR?

According to Stackoverflow developer research, Elixir is one of the most loved and highly paid technologies.
Elixir is mostly used and loved by Senior devs with many years of experience.
I believe that Elixir will become more popular because it boosts developers' productivity
and saves time and money for a business.

web2 and web3 stack have the same (JS frameworks based) frontend part.
Fullstack devs have more chances to be hired.

As someone who once spent 4 hours choosing a shade for the background of my first web page, 
I'd like to minimize tools and time spent on the frontend, and focus mostly on the backend.
My goal is to master quick fullstack web2 and web3 MVP and scalable web apps development.
Mixing up Elixir with blockchain or AI / ML seems to be interesting, too.

Some videos to answer the Why question:
https://www.youtube.com/watch?v=4cnmyQJToKM
https://www.youtube.com/results?search_query=getting+my+fullstack+back
https://www.youtube.com/watch?v=MZvmYaFkNJI
https://www.youtube.com/watch?v=BNmM2PyHs2c&ab_channel=ElixirToronto
https://www.youtube.com/watch?v=lxYFOM3UJzo

This basics repo will cover (hopefully):

Elixir basics
Phoenix
LiveView
PETAL stack (Phoenix, Elixir, TailwindCSS, Alpine.js, LiveView)

And maybe also:
Ecto
ExUnit
Ash
Absinthe (I'll try to focus more on GraphQL than REST API)

Some related pet projects (if I'll manage to make them) will be listed below.

LEARNING SOURCES:

FREE COURSES AND TUTORIALS

https://code-basics.com/languages/elixir - interactive Elixir basics training - Hexlet based, EN / RU

https://elixirschool.com/ - lessons on different Elixir topics from basics to OTP, testing, Ecto and libraries

https://www.youtube.com/playlist?list=PLYuTgpYrBrVKnzanStbVGD09Cdx4YNEpO - Yuri Zhloba Elixir course (RU), also Yuri has an Erlang course on his channel.

https://www.youtube.com/@pragmaticstudio - some videos, also have paid courses which many people recommend, and books on Elixir and its stack.


OFFICIAL DOCS

https://elixir-lang.org/docs.html - Elixir official documentation (also has a nice LEARNING section with a list of sources)

https://hexdocs.pm/elixir/1.16.2/Kernel.html - Kernel - the core of Elixir language

https://hexdocs.pm/phoenix/Phoenix.html - Phoenix Framework (also has Guides section)

https://hexdocs.pm/phoenix/overview.html - Phoenix framework Guide on the Hexdocs (also look for docs for any published Elixir package here)

https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html - Phoenix LiveView docs (and guide)

BOOKS

"Elixir in Action" - Saša Jurić
"Phoenix in Action" - Geoffrey Lessel
"Programming Elixir" - Dave Thomas
"Programming Phoenix LiveView" - Bruce A. Tate, Sophie DeBenedetto

(to be continued..)


