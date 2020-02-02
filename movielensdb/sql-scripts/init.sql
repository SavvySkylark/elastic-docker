CREATE TABLE movielens.movies (
    movieID INT PRIMARY KEY NOT NULL,
    title TEXT,
    releaseDate TEXT
);

LOAD DATA INFILE '/tmp/u.item' INTO TABLE movielens.movies 
FIELDS TERMINATED BY '|' 
(movieID, title, @var3) 
set releaseDate = STR_TO_DATE(@var3, '%d-%b-%Y');