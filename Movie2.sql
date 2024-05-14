CREATE DATABASE  IF NOT EXISTS `movie2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `movie2`;

-- Create the 'title_basics' table
CREATE TABLE title_basics (
    tconst VARCHAR(255),
    primary_title VARCHAR(255),
    start_year INT,
    runtime FLOAT
);

-- Create the 'ratings' table
CREATE TABLE ratings (
    tconst VARCHAR(255) ,
    average_rating FLOAT,
    number_of_votes INT
);

-- Create the 'genres' table
CREATE TABLE genres (
    genre_id INT ,
    genre_name VARCHAR(255)
);

-- Create the 'title_genres' table
CREATE TABLE title_genres (
    tconst VARCHAR(255),
    genre_id INT,
    PRIMARY KEY (tconst, genre_id),
    FOREIGN KEY (tconst) REFERENCES title_basics(tconst),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

SHOW TABLES;

