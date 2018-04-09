DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  darkside BOOLEAN
);

CREATE TABLE lightsabers (
  id SERIAL8,
  colour VARCHAR(255),
  hilt_metal VARCHAR(255),
  owner_id INT8 REFERENCES characters(id)
);

INSERT INTO characters (name, age, darkside) VALUES ('Obi-Wan Kenobi', 27, false);
INSERT INTO characters (name, age, darkside) VALUES ('Anakin Skywalker', 19, false);
INSERT INTO characters (name, age, darkside) VALUES ('Darth Maul', 32, true);
INSERT INTO characters (name, darkside) VALUES ('YODA', false);

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';

INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('Green', 'Palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('Red', 'Gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('Red', 'Titanium', 2);

-- DELETE FROM characters WHERE name = 'Darth Maul';

-- INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
-- INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
-- INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
-- INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
-- INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
