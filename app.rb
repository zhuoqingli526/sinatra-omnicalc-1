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
  erb(:square_root_form)
end

get("/random/results") do
  @number = params.fetch("number")
  @result = Math.sqrt(@number.to_f)
  erb(:square_root_result)
end
