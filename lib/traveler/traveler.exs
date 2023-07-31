{distance, _} = Integer.parse IO.gets "how the distance?\n"
{time, _} = Integer.parse IO.gets "how many time?\n"

IO.puts "It took you #{time} hours to travel #{distance}km, meaning tou traveled at an average of #{distance/time}hm/h"
