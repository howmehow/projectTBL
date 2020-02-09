require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/city")
require_relative("./models/country")
require_relative("./models/continent")
also_reload("./models/*")

get '/' do
  erb(:index)
end

get '/add-new' do

  erb(:add_new)
end
get '/visited' do
  @cities = City.all()
  erb(:visited)
end
get '/my-bucket-list' do
  @cities = City.all()

  erb(:my_bucket_list)
end
