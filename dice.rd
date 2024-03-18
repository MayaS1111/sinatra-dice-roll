require "sinatra"

get ("/") do
  "Dice Roll"
  "<a href="/dice/2/6">Roll two 6-sided dice</a>"
end


get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end


get ("dice/2/10") do
  dice1 = rand(1..10)
  dice2 = rand(1..10)
  total = dice1 + dice2

  string = "You rolled a #{dice1} and a #{dice2}  for a total of #{total}."

    "<h1>2d10</h1>
    <p>#{string}</p> "
end

get ("dice/1/20") do
  dice1 = rand(1..20)
  total = dice1 

  string = "You rolled a #{dice1} for a total of #{total}."

  "<h1>2d10</h1>
    <p>#{string}</p> "
end
