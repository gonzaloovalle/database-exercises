USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(60) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);