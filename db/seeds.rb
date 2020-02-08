require_relative("../models/*")
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
  "country_id" => country1.id)
city2 = City.new(
  "name" => "Warsaw",
  "country_id" => country2.id)
city3 = City.new(
  "name" => "Berlin",
  "country_id" => country3.id)
city4 = City.new(
  "name" => "Hamburg",
  "country_id" => country3.id)
city1.save()
city2.save()
city3.save()
city4.save()
