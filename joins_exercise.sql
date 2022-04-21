USE join_test_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
     ('bob', 'bob@example.com', 1),
     ('joe', 'joe@example.com', 2),
     ('sally', 'sally@example.com', 3),
     ('adam', 'adam@example.com', 3),
     ('jane', 'jane@example.com', null),
     ('mike', 'mike@example.com', null);

USE join_test_db

INSERT INTO users (name, email, role_id) VALUES
    ('shaz', 'shaz@codeup.com', null),
    ('josh', 'josh@codeup.com', 2),
    ('susan', 'susan@codeup.com', 2),
    ('jesus', 'jesus@codeup.com', 2);

SELECT *
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT *
FROM users u
LEFT JOIN roles r ON u.role_id = r.id;

SELECT *
FROM users u
RIGHT JOIN roles r ON u.role_id = r.id;

SELECT COUNT(*), roles.name, role_id
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role_id;
