user_input = IO.gets "What is our salary?\n"
case Integer.parse(user_input) do
    :error -> "Invalid salary: #{user_input}"

    {salary, _} -> 
        income_tax = Chapter3.income_tax(salary)
        "Your tax is: #{income_tax} and your net wage is: #{salary - income_tax}"
end