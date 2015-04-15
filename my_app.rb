require 'sinatra'
require './my_model'


get "/" do
  y = MyApp.new
  "#{y}" 
end


get "/about" do
  erb :about
end
