-- Command to create the database
CREATE DATABASE `myDatabase` IF NOT EXISTS;

-- USE `myDatabase`

CREATE TABLE `user`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(32),
    username VARCHAR(16),
    password VARCHAR(16),
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11
    hash CHAR(32),

    PRIMARY KEY(id)
);

CREATE TABLE `page`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255),
    title VARCHAR(255),
    subtitle VARCHAR(255),
    language CHAR(2),
    urlImage VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url VARCHAR(128),
    title VARCHAR(64),
    subtitle VARCHAR(64),
    language CHAR(2),
    urlImage VARCHAR(128),
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11

    PRIMARY KEY(id)
);

CREATE TABLE `pageTab` (
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    idPage INT NOT NULL,
    title VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    idPage MEDIUMINT UNSIGNED NOT NULL,
    title VARCHAR(64),
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11
    content TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `work`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    suport VARCHAR(255),
    date INT(4),
    editor VARCHAR(255),
    place VARCHAR(255),
    author VARCHAR(255),
    language VARCHAR(255),
    keywords VARCHAR(255),
    description text,
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(64),
    suport VARCHAR(16),
    date INT(4),
    editor VARCHAR(32),
    place VARCHAR(32),
    author VARCHAR(32),
    language CHAR(2),
    keywords VARCHAR(128),
    description TEXT,
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11

    PRIMARY KEY(id)
);

CREATE TABLE `arab`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    suport VARCHAR(255),
    date INT(4),
    author VARCHAR(255),
    language VARCHAR(255),
    keywords VARCHAR(255),
    description VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(64),
    suport VARCHAR(16),
    date INT(4),
    author VARCHAR(32),
    language CHAR(2),
    keywords VARCHAR(128),
    description TEXT,
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11

    PRIMARY KEY(id)
);

CREATE TABLE `team`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    content TEXT,
    urlImage VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(32),
    content TEXT,
    urlImage VARCHAR(128),
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11

    PRIMARY KEY(id)
);

CREATE TABLE `log`(
<<<<<<< HEAD
    id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255),
    date DATETIME,
    author VARCHAR(255),
    showAuthor BOOLEAN DEFAULT 0,
    title VARCHAR(255),
    language CHAR(2),
    urlImage VARCHAR(255),
    content TEXT,

    PRIMARY KEY(id)
);

CREATE TABLE `blog`(
    id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255),
    data DATETIME,
    author VARCHAR(255),
    showAuthor BOOLEAN DEFAULT 0,
    title VARCHAR(255),
    language CHAR(2),
    urlImage VARCHAR(255),
=======
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url VARCHAR(128),
    date SMALLDATETIME,
    author VARCHAR(32),
    showAuthor BOOLEAN DEFAULT 0,
    title VARCHAR(64),
    language CHAR(2),
    urlImage VARCHAR(128),
>>>>>>> ef14a031a2adeb7ec07a76309d29f9166018ee11
    content TEXT,

    PRIMARY KEY(id)
);