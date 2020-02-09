require_relative("../models/city")
require_relative("../models/continent")
require_relative("../models/country")
require("pry")

City.delete_all()
Country.delete_all()
Continent.delete_all()
#########################################
continent1 = Continent.new(
  "name" => "Asia")
continent2 = Continent.new(
  "name" => "Europe")
continent3 = Continent.new(
  "name" => "Africa")
continent4 = Continent.new(
  "name" => "North America")
continent5 = Continent.new(
  "name" => "South America")
continent6 = Continent.new(
  "name" => "Australia")
continent1.save()
continent2.save()
continent3.save()
continent4.save()
continent5.save()
continent6.save()
#########################################
country1 = Country.new(
  "name" => "Scotland",
  "continent_id" => continent2.id)
country2 = Country.new(
  "name" => "Poland",
  "continent_id" => continent2.id)
country3 = Country.new(
  "name" => "Germany",
  "continent_id" => continent2.id)
country1.save()
country2.save()
country3.save()
##########################################
city1 = City.new(
  "name" => "Edinburgh",
   "visited" => 0,
   "wish_list" => 1,
   "country_id" => country1.id)
city2 = City.new(
  "name" => "Warsaw",
   "visited" => 1,
   "wish_list" => 0,
   "country_id" => country2.id)
city3 = City.new(
  "name" => "Berlin",
   "visited" => 0,
   "wish_list" => 1,
   "country_id" => country3.id)
city4 = City.new(
  "name" => "Hamburg",
   "visited" => 1,
   "wish_list" => 0,
   "country_id" => country3.id)
city5 = City.new(
  "name" => "Glasgow",
   "visited" => 0,
   "wish_list" => 1,
   "country_id" => country1.id)
city6 = City.new(
  "name" => "Poznan",
   "visited" => 1,
   "wish_list" => 0,
   "country_id" => country2.id)
city7 = City.new(
  "name" => "Cologne",
   "visited" => 0,
   "wish_list" => 1,
   "country_id" => country3.id)
city8 = City.new(
  "name" => "Dusseldorf",
   "visited" => 1,
   "wish_list" => 0,
   "country_id" => country3.id)

city1.save()
city2.save()
city3.save()
city4.save()
city5.save()
city6.save()
city7.save()
city8.save()
binding.pry
nil
