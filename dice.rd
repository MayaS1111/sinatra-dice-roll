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

	erb(:two_six, {:layout => :wrapper})
end

get ("/dice/2/10") do
  dice1 = rand(1..10)
  dice2 = rand(1..10)
  total = dice1 + dice2

  @outcome = "You rolled a #{dice1} and a #{dice2}  for a total of #{total}."

  erb(:two_ten, {:layout => :wrapper})
end

get ("/dice/1/20") do
  dice1 = rand(1..20)
  total = dice1 

  @outcome = "You rolled a #{dice1} for a total of #{total}."

  erb(:one_twenty, {:layout => :wrapper})
end

get("/dice/5/4") do
  first_die = rand(1..4)
	second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die

	@outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}."

	erb(:five_four, {:layout => :wrapper})
end
