defmodule Tax do  
  def appling_tax() do
    apply_tax = fn value -> 
        tax = value * 0.12
        IO.puts("Price: #{value + tax} - Tax: #{tax}")
    end

    Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
  end
end