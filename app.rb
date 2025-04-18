require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/howdy") do
  erb(:hello)
end
