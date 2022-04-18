USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(100),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Radiohead', 'In Rainbows', 20071010, 0, 'art rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Radiohead', 'Hail To The Thief', 20030609, 0, 'art rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Radiohead', 'Amnesiac', 20010531, 0, 'art rock');

DESC albums;

SELECT * FROM albums WHERE release_date > 20050101;
