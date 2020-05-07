Travel Bucket List.



<img width="1432" alt="Screenshot 2020-05-07 at 16 36 07" src="https://user-images.githubusercontent.com/58289892/81314405-fb076180-9080-11ea-9265-cf7fa607a2ec.png">
<img width="1428" alt="Screenshot 2020-05-07 at 16 36 16" src="https://user-images.githubusercontent.com/58289892/81314417-fd69bb80-9080-11ea-9280-ae239cbc9e6d.png">
<img width="1395" alt="Screenshot 2020-05-07 at 16 36 29" src="https://user-images.githubusercontent.com/58289892/81314423-ffcc1580-9080-11ea-9797-0e2542151309.png">
<img width="1435" alt="Screenshot 2020-05-07 at 16 36 39" src="https://user-images.githubusercontent.com/58289892/81314425-0064ac00-9081-11ea-8ab2-5f82714bdaaa.png">


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
