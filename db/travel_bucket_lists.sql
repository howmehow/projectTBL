DROP TABLE cities;
DROP TABLE countries;
DROP TABLE continents;

CREATE TABLE continents (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  visited boolean NOT NULL,
  country_id INT REFERENCES countries(id) ON DELETE CASCADE,
  continent_id INT REFERENCES continents(id) ON DELETE CASCADE
);