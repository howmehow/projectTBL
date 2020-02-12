require( 'sinatra')
require( 'sinatra/contrib/all')
require_relative('../models/city.rb')
require_relative('../models/country.rb')
require_relative('../models/continent.rb')
also_reload('../models/*')

get '/city' do #index
  @cities = City.all()
  erb(:"city/index")
end

get '/city/new' do #new
  @continents = Continent.all()
  @countries = Country.all()
  erb(:"city/new")
end

get '/city/:id' do #show
  @city = City.find(params[:id])
  erb(:"city/show")
end

post '/city' do #create
  @city = City.new(params)
  @city.save()
  redirect to "/"
end

get '/city/:id/edit' do #edit
  @continents = Continent.all()
  @countries = Country.all()
  @city = City.find(params[:id])
  erb(:"city/edit")
end

post '/city/:id' do #update
  City.new(params).update
  redirect to "/"
end

post '/city/:id/delete' do #delete
  city = City.find(params[:id])
  city.delete()
  redirect to "/visited"
end
