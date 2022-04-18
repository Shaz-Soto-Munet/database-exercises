USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUE ('Michael Jackson', 'Thriller', 19820101, 70, 'pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUE ('AC/DC', 'Back in Black', 19800101, 50, 'hard rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Whitney Houston', 'The Bodyguard', 19920101, 45, 'r&b');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Meat Loaf', 'Bat Out of Hell', 19770101, 44, 'hard rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Eagles', 'Their Greatest Hits (1971-1975)', 19760101, 44, 'country rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Pink Floyd', 'The Dark Side of the Moon', 19730101, 44, 'progressive rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Bee Gees', 'Saturday Night Fever', 19770101, 42, 'disco');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Fleetwood Mac', 'Rumours', 19770101, 40, 'soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Shania Twain', 'Come On Over', 19970101, 40, 'country');

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUE ('Michael Jackson', 'Thriller', 19820101, 70, 'pop'),
     ('AC/DC', 'Back in Black', 19800101, 50, 'hard rock'),
     ('Whitney Houston', 'The Bodyguard', 19920101, 45, 'r&b'),
     ('Meat Loaf', 'Bat Out of Hell', 19770101, 44, 'hard rock'),
     ('Eagles', 'Their Greatest Hits (1971-1975)', 19760101, 44, 'country rock'),
     ('Pink Floyd', 'The Dark Side of the Moon', 19730101, 44, 'progressive rock'),
     ('Bee Gees', 'Saturday Night Fever', 19770101, 42, 'disco'),
     ('Fleetwood Mac', 'Rumours', 19770101, 40, 'soft rock'),
     ('Shania Twain', 'Come On Over', 19970101, 40, 'country');







