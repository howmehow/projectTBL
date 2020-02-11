DROP TABLE cities;
DROP TABLE countries;
DROP TABLE continents;

CREATE TABLE continents (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  visited boolean,
  country_id INT REFERENCES countries(id) ON DELETE CASCADE,
  continent_id INT REFERENCES continents(id) ON DELETE CASCADE
);
