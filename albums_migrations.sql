USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id AUTO_INCREMENT UNSIGNED INT,
    artist VARCHAR(50),
    name VARCHAR(100),
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);
