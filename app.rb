require "sinatra"
require "sinatra/reloader"
require "cmath"

get("/") do
  erb(:home)
end

get("/square/new") do
  erb(:square)
end 

get("/square/results") do
  @num_square = params.fetch("number").to_f
  @square = @num_square**2.to_f
  erb(:square_out)
end 

get("/square_root/new") do
  erb(:square_root)
end 

get("/square_root/results") do
  @num = params.fetch("user_number").to_f  
  @square_root = CMath.sqrt(@num)
  erb(:square_root_out)
end 

get("/payment/new") do
  erb(:payment)
end 
get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_f
  @pv = params.fetch("users_pv").to_f
  erb(:payment_out)
end 

get("/random/new") do
  erb(:random)
end 

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  if @min < @max 
    @rand = rand(@min..@max)
  else 
    @rand = ""
  end 
  erb(:random_out)
end 
