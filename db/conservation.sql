DROP TABLE IF EXISTS sponsorships;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS members;

CREATE TABLE members(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  picture TEXT
);

CREATE TABLE animals(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  species VARCHAR(255),
  ecological_status VARCHAR(255),
  habitat VARCHAR(255),
  first_sighting DATE,
  image TEXT
);

CREATE TABLE sponsorships(
  id SERIAL PRIMARY KEY,
  animal_id INT REFERENCES animals(id) ON DELETE CASCADE,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  value INT,
  date_sponsored DATE
);
