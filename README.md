Travel Bucket List.


gem install pg
dropdb travels
createdb travels
psql -d travels -f db/travel_bucket_lists.sql
ruby app.rb
ruby db/seeds

To check if everything is working in DB:

psql travels
select * from cities;
