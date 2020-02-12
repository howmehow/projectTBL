require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/country.rb')
require_relative('../models/continent.rb')
also_reload('../models/*')

get '/country' do #index
  @countries = Country.all()
  erb(:"country/index")
end

get '/country/new' do #new
  erb(:"country/new")
end

get '/country/:id' do #show
  @countries = Country.find(params[:id])
  erb(:"country/show")
end

post '/country' do #create
  @countries = Country.new(params)
  @countries.save()
  redirect "/city/new"
end

get '/country/:id/edit' do #edit
  @countries = Country.find(params[:id])
  erb(:"country/edit")
end

post '/country/:id' do #update
  Country.new(params).update
  redirect "/city/new"
end

post '/country/:id/delete' do #delete
  country = Country.find(params[:id])
  country.delete()
  redirect "/city/new"
end
