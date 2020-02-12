require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/continent.rb')
also_reload('../models/*')

get '/continent' do #index
  @continents = Continent.all
  erb(:"continent/index")
end

get '/continent/new' do #new
  erb(:"continent/new")
end

get '/continent/:id' do #show
 @continent = Continent.find(params[:id])
 erb(:"continent/show")
end

post '/continent' do #create
  @continent = Continent.new(params)
  @continent.save()
  redirect to "/city/new"
end

get '/continent/:id/edit' do #edit
  @continent = Continent.find(params[:id])
  erb(:"continent/edit")
end

post '/continent/:id' do #update
  Continent.new(params).update
  redirect to "/city/new"
end

post '/continent/:id/delete' do #delete
  continent = Continent.find(params[:id])
  continent.delete()
  redirect to "/city/new"
end
