require "sinatra"
require "sinatra/reloader"


get("/square/new") do
  erb(:square_form)
end

get("/square/results") do
  @number = params.fetch("number")
  @result = @number.to_f ** 2

  erb(:square_result)
end

get("/square_root/new") do
  erb(:square_root_form)
end

get("/square_root/results") do
  @number = params.fetch("number")
  @result = Math.sqrt(@number.to_f)
  erb(:square_root_result)
end

get("/square/results") do
  @number = params.fetch("number")
  @result = @number.to_f ** 2

  erb(:square_result)
end

get("/random/new") do
  erb(:random_form)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @random_result = rand(@min..@max)
  erb(:random_result)
end

get("/payment/new") do
  erb(:payment_form)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @r = @apr/100/12
  @year = params.fetch("user_years").to_i
  @n = @year/12
  @pv = params.fetch("user_pv").to_f
  @numerator = @r * @pv
  @denumerator = 1 - (1+@r) ** -@n

  @payment_result = @numerator / @denumerator
  erb(:paymemt_result)
end
