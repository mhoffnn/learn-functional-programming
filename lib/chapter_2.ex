defmodule Chapter2 do
  def sum_bread(total, quantity), do: total + (quantity * 0.1)
  def sum_milk(total, quantity), do: total + (quantity * 2.0)
  def sum_cake(total, quantity), do: total + (quantity * 15.0)

  def sarah_checkout(bread_quantity, milk_quantity, cake_quantity) do
    0
    |> sum_bread(bread_quantity)
    |> sum_milk(milk_quantity)
    |> sum_cake(cake_quantity)
  end
  
  def travaler_message(distance, time) do
    "It took you #{time} hours to travel #{distance}km, meaning tou traveled at an average of #{distance/time}hm/h"
  end

  def appling_tax() do
    apply_tax = fn value -> 
        tax = value * 0.12
        IO.puts("Price: #{value + tax} - Tax: #{tax}")
    end

    Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
  end
end