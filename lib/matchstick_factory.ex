defmodule MatchstickFactory do
    @big_box 50
    @median_box 20
    @small_box 5

    def boxes(stick_quatity) do
    big = div stick_quatity, @big_box

    medium = stick_quatity 
    |> rem(@big_box) 
    |> div(@median_box)

    small = stick_quatity 
    |> rem(@big_box) 
    |> rem(@median_box) 
    |> div(@small_box)

    remaining = stick_quatity
    |> rem(@big_box)
    |> rem(@median_box)
    |> rem(@small_box)

    %{
        big: big,
        medium: medium,
        small: small,
        remaining_matchsticks: remaining
    }
    end
end