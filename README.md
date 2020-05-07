Travel Bucket List.


Open new terminal window.
```
gem install pg
dropdb travels
createdb travels
psql -d travels -f db/travel_bucket_lists.sql
ruby app.rb
```
Open new terminal window
```
ruby db/seeds
exit
```
Now you can visit website on: http://localhost:4567/

To check if everything is working in DB:
```
psql travels
select * from cities;
```
