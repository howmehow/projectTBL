require_relative("../models/city.rb")
require_relative("../models/continent.rb")
require_relative("../models/country.rb")
require("pry-byebug")

City.delete_all()
Country.delete_all()
Continent.delete_all()
#########################################
continent1 = Continent.new(
  "name" => "Europe")
continent2 = Continent.new(
  "name" => "Asia")
continent3 = Continent.new(
  "name" => "Africa")
continent4 = Continent.new(
  "name" => "North America")
continent5 = Continent.new(
  "name" => "South America")
continent6 = Continent.new(
  "name" => "Australia")
continent7 = Continent.new(
  "name" => "Antarctica")
continent1.save()
continent2.save()
continent3.save()
continent4.save()
continent5.save()
continent6.save()
continent7.save()
#########################################
country1 = Country.new(
  "name" => "Scotland")
country2 = Country.new(
  "name" => "Poland")
country3 = Country.new(
  "name" => "Germany")
country1.save()
country2.save()
country3.save()
##########################################
city1 = City.new(
  "name" => "Edinburgh",
   "visited" => TRUE,
   "country_id" => country1.id,
   "continent_id" => continent2.id)
city2 = City.new(
   "name" => "Warsaw",
   "visited" => TRUE,
   "country_id" => country2.id,
   "continent_id" => continent2.id)
city3 = City.new(
  "name" => "Berlin",
   "visited" => FALSE,
   "country_id" => country3.id,
   "continent_id" => continent2.id)
city4 = City.new(
  "name" => "Hamburg",
   "visited" => TRUE,
   "country_id" => country3.id,
   "continent_id" => continent2.id)
city5 = City.new(
  "name" => "Glasgow",
   "visited" => FALSE,
   "country_id" => country1.id,
   "continent_id" => continent2.id)
city6 = City.new(
  "name" => "Poznan",
   "visited" => TRUE,
   "country_id" => country2.id,
   "continent_id" => continent2.id)
city7 = City.new(
  "name" => "Cologne",
   "visited" => FALSE,
   "country_id" => country3.id,
   "continent_id" => continent2.id)
city8 = City.new(
  "name" => "Dusseldorf",
   "visited" => TRUE,
   "country_id" => country3.id,
   "continent_id" => continent2.id)

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
