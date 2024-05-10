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

Why not a fork of the original code? Because the best way to follow the course is to type everything by yourself and experiment in CLI or IDE. (Use ElixirLS extension for VSCode or $ iex after installing):

https://elixir-lang.org/install.html - install Elixir
https://www.erlang.org/downloads - install Erlang/OTP (if it didn't come with Elixir installation)

The course is recorded in Russian, but in this repo everything will be in English.
I hope to add some useful comments and some info from other learning sources (will be listed below). All of them are wonderful, but from the very start you'll see that some important details may be covered in one source and overseen in another one, for example like || and && operators in Elixirschool lessons 
(but they have so many languages!) 

In these files and comments  I will try to cover everything exhaustively to explain it. 
I refer here to concepts of deliberate practice and Feynman method covered somewhere on this great channel:
https://www.youtube.com/@OverEngineer/videos 

WHY ELIXIR?

According to Stackoverflow developer research, Elixir is one of the most loved and highly paid technologies.
I was interested and googled a bit. Than I forgot about it and dived into a Python course.

web2 and web3 stack have the same (JS frameworks based) frontend stack.
Fullstack devs have more chances to be hired.

But the frontend, Javascript, its frameworks, libraries, plus HTML and CSS are not my cup of tea.
I have a bulk of thing to be learned to build a decent backend in Python, and also there is blockchain and Solidity and this magical web3 stack, completely different in its backend part. 
But even after mastering all these skills and the architecture, I still will be unable to produce a fullstack app or even a page without too many different JS things which change so fast, and every company uses another framework. I tried to choose which framework to learn but...
I didn't want to learn any of them. It's a shame. It's laziness. And it's a bliss. There is another way.
Keep it simple, right?

As someone who once spent 4 hours choosing a shade for the background of my first web page, I prefer to keep away from the frontend stuff. There are many people who will make it much better than me. 
But I NEED to create at least SOMETHING on the frontend to present the backend. SOMEHOW.

My idea is that a great app is business logic, data and system design first. Hidden treasures.
IMHO, CLI has the best UI. No UI is the best UI, as long as we have dark theme, the app performs well
and really does what it was designed for - that's enough. 
Apple designs super things by hiding the complexity and keeping it simple for a user.

My goal was and still is to master quick fullstack MVP development and scalable web apps. With a touch
of blockchain and AI and ML (in myy dreams). Something financial, maybe. Distributed. Very stable.
I thought that there should be a better way to make (fullstack) things work.
Luckily, a lot of devs had this idea many years before me, and some of them have created exciting tools.

Elixir is mostly used and loved by Senior devs who already know and have worked with an awful lot of different programming languages for many years. It's a rare choice to be a first programming language for someone. I believe in standing on the shoulders of giants, more experienced people. And in KISS.

So, why would anyone go through 5-10-20 years of working with different languages and frameworks,
as the market and fashion shifts from one stack to another, while we can jump directly to Elixir?

I didn't find any persuasive answer to this. Instead, I found a lot of great videos like these ones:

https://www.youtube.com/watch?v=4cnmyQJToKM
https://www.youtube.com/results?search_query=getting+my+fullstack+back
https://www.youtube.com/watch?v=MZvmYaFkNJI
https://www.youtube.com/watch?v=BNmM2PyHs2c&ab_channel=ElixirToronto
https://www.youtube.com/watch?v=lxYFOM3UJzo

All the reviews from Elixir forums and comment sections said that working with Elixir, LiveView & Phoenix was life-changing, enjoyable.. Stackoverflow stats didn't lie, quantity and quality research told the same.

So, I fell in love with the idea of creating a fullstack web app with the single language and without digging into the current frontend hell.
Thanks to Erlang and OTP - Elixir apps have millions of users, are easily scaled, designed to be reliable, distributed, concurrent, easily created and supported by tiny teams, etc, etc. What could be better?

Maybe it's not the best choice as your first, single language or when you are in a hurry to be hired.
I have another goal and I am thinking from the perspective of pros and cons for businesses and their clients. I think Elixir has a big future and it will become mainstream in 5 or 10 years.
The code is beautiful, and beautiful is better than ugly (hello to Pythonistas).
Python code looks great, but Elixir code is even prettier.

That is my WHY. I am starting this way with the hope to find later some great startup founders and help them turn their ideas into working MVPs and apps. Then they will get investments, scale easily and stay a small agile team with a growing audience. Saving time, money and energy for everyone. Serving clients and changing lives and world to a better place. The goal should be bigger than the walls on your way.

Let's go with me.

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

Elixir in Action

Phoenix in Action

(to be continued..)


