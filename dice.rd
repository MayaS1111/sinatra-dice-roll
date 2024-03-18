require "sinatra"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get ("/") do
  erb(:elephant)
end

get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

	erb(:two_six)
  
end

get ("/dice/2/10") do
  dice1 = rand(1..10)
  dice2 = rand(1..10)
  total = dice1 + dice2

  string = "You rolled a #{dice1} and a #{dice2}  for a total of #{total}."

  #erb(:one_ten)
    "<h1>2d10</h1>
    <p>#{string}</p> "
end

get ("/dice/1/20") do
  dice1 = rand(1..20)
  total = dice1 

  string = "You rolled a #{dice1} for a total of #{total}."

  "<h1>2d10</h1>
    <p>#{string}</p> "
end

get("/dice/5/4") do
  first_die = rand(1..4)
	second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die

	outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}."

	"<h1>5d4</h1>
   <p>#{outcome}</p>"
end
