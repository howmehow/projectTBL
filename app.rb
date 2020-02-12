require("sinatra")
require("sinatra/contrib/all")
require_relative('./controllers/city_controller')
require_relative('./controllers/country_controller')
require_relative('./controllers/continent_controller')
require_relative('./models/city.rb')
require_relative('./models/country.rb')
require_relative('./models/continent.rb')

get '/' do #index
  @cities = City.all()
  @continents = Continent.all()
  @countries = Country.all()
  erb(:index)
end

get '/visited' do #index of wish list
  @cities = City.all()
  erb(:visited)
end

get '/europe' do
  erb(:europe)
end

get '/southamerica' do
  erb(:southamerica)
end
