-- Command to create the database
CREATE DATABASE `myDatabase` IF NOT EXISTS;

-- USE `myDatabase`

CREATE TABLE `user`(
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(32),
    username VARCHAR(16),
    password VARCHAR(16),
    hash CHAR(32),

    PRIMARY KEY(id)
);

CREATE TABLE `page`(
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url VARCHAR(128),
    title VARCHAR(64),
    subtitle VARCHAR(64),
    language CHAR(2),
    urlImage VARCHAR(128),

    PRIMARY KEY(id)
);

CREATE TABLE `pageTab` (
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    idPage MEDIUMINT UNSIGNED NOT NULL,
    title VARCHAR(64),
    content TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `work`(
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

    PRIMARY KEY(id)
);

CREATE TABLE `arab`(
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(64),
    suport VARCHAR(16),
    date INT(4),
    author VARCHAR(32),
    language CHAR(2),
    keywords VARCHAR(128),
    description TEXT,

    PRIMARY KEY(id)
);

CREATE TABLE `team`(
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(32),
    content TEXT,
    urlImage VARCHAR(128),

    PRIMARY KEY(id)
);

CREATE TABLE `log`(
    id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url VARCHAR(128),
    date SMALLDATETIME,
    author VARCHAR(32),
    showAuthor BOOLEAN DEFAULT 0,
    title VARCHAR(64),
    language CHAR(2),
    urlImage VARCHAR(128),
    content TEXT,

    PRIMARY KEY(id)
);