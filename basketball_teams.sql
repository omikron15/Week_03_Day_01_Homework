DROP TABLE players;
DROP TABLE team;

CREATE TABLE team (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  hometown VARCHAR(255),
  stadium VARCHAR(255)
);

CREATE TABLE players (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  position VARCHAR(255),
  team_id INT8 REFERENCES team(id)
);

INSERT INTO team (name, hometown, stadium) VALUES ('Bulls', 'Chicago', 'United Center');
INSERT INTO team (name, hometown, stadium) VALUES ('Knicks', 'New York', 'Madison Square Garden');
INSERT INTO team (name, hometown, stadium) VALUES ('Lakers', 'L.A.', 'Staples Center');

INSERT INTO players (name, age, position, team_id) VALUES ('Derrick Rose', 29, 'PG', 1);
INSERT INTO players (name, age, position, team_id) VALUES ('Tim Hardway', 26, 'G', 2);
INSERT INTO players (name, age, position, team_id) VALUES ('Joakim Noah', 33, 'C', 2);
INSERT INTO players (name, age, position, team_id) VALUES ('Luol Deng', 32, 'F', 3);
