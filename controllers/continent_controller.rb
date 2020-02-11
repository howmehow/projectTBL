require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/continent.rb')
also_reload('../models/*')

get '/continent' do
  @continents = Continent.all

  erb(:"continent/index")
end
