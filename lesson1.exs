defmodule HelloWorld do
  def run(str) do
    str |>
    String.reverse() |>
    String.upcase() |>
    IO.inspect()
  end
end

"Hello world!" |> HelloWorld.run()
