require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:square_form)
end

get("/square/results") do
  @number = params.fetch("number").to_i
  @result = @number ** 2

  erb(:square_result)
end
