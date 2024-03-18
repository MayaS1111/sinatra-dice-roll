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
