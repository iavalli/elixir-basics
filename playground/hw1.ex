defmodule BirthDates do
  def getdate do
    map = %{"Alex" => "02.01.1990", "Kerry" => "03.08.1988", "Kate" => "04.07.1993"}
    Map.fetch!(map, "Alex")
  end
end
