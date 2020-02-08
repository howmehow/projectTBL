DROP TABLE cities;
DROP TABLE countries;
DROP TABLE continents;

CREATE TABLE continents (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  continent_id INT REFERENCES continents(id)
);
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  country_id INT REFERENCES countries(id)
-- );add later on sights.
