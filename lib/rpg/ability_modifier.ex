defmodule RPG.AbilityModifier do
    def total_points(%{
        strength: strangth_value,
        dexterity: dexterity_value,
        intelligence: intelligence_value
        }) do
        strangth_value * 2 + dexterity_value * 3 + intelligence_value * 3
    end

    def modifier do
        user_input = IO.gets "Write your ability score:\n"
        result = case Integer.parse(user_input) do
            :error -> "Invalidi ability score: #{user_input}"

            {ability_score, _} when ability_score >= 0 ->
                ability_modifier = (ability_score - 10) / 2
                "Your ability modifier is #{ability_modifier}"
        end

        IO.puts result
    end
end
