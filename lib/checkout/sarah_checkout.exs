{bread_quantity, _} = Integer.parse IO.gets "How many breads?\n"
{milk_quantity, _} = Integer.parse IO.gets "how many boxes of milk?\n"
{cake_quantity, _} = Integer.parse IO.gets "how many cakes?\n"


IO.puts "Your purchase was #{(bread_quantity * 0.1) + (milk_quantity * 2) + (cake_quantity * 15)} moneys"