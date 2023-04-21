
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS players;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year_released INTEGER,
    rating_mdaa TEXT,
    studio_id INTEGER
);

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company TEXT
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE players (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character TEXT,
    actor_id INTEGER,
    movie_id INTEGER
);

INSERT INTO movies (
    title,
    year_released,
    rating_mdaa,
    studio_id
)
VALUES
("Batman Begins", 2005, "PG-13", 1),
("The Dark Knight", 2008, "PG-13",1),
("The Dark Knight Rises", 2012, "PG-13", 1);

INSERT INTO studios (company)
VALUES ("Warner Bros.");

INSERT INTO actors (name)
VALUES ("Christian Bale"), 
    ("Michael Caine"), 
    ("Liam Neeson"), 
    ("Katie Holmes"), 
    ("Gary Oldman"), 
    ("Heath Ledger"), 
    ("Aaron Eckhart"),
    ("Maggie Gyllenhaal"), 
    ("Tom Hardy"),
    ("Joseph Gordon-Levitt"),
    ("Anne Hathaway");

INSERT INTO players (character, movie_id, actor_id)
VALUES ("Bruce Wayne", 1, 1), 
    ("Alfred", 1, 2), 
    ("Ra's Al Ghul", 1, 3), 
    ("Rachel Dawes", 1, 4), 
    ("Commissioner Gordon", 1, 5), 
    ("Bruce Wayne", 2, 1), 
    ("Joker", 2, 6),
    ("Harvey Dent", 2, 7), 
    ("Alfred", 2, 2),
    ("Rachel Dawes", 2, 8),
    ("Bruce Wayne", 3, 1),
    ("Commissioner Gordon", 3, 5),
    ("Bane", 3, 9), 
    ("John Blake", 3, 10),
    ("Selina Kyle", 3, 11);

.print "Movies"
.print "======"
.print ""

SELECT movies.title, movies.year_released, movies.rating.mdaa, studios.name 
FROM movies INNER JOIN studios ON movies.studio_id = studios.id;

.print ""
.print "Top Cast"
.print "========"
.print ""

SELECT movies.title, actors.name, players.character 
FROM players INNER JOIN movies ON players.movie_id = movies.id, 
FROM players INNER JOIN actors ON players.actor_id = actor.id;

