-- Command to create the database
CREATE DATABASE myDatabase IF NOT EXISTS;

USE myDatabase

CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    hash VARCHAR(32),

    PRIMARY KEY(id)
);

CREATE TABLE `page`(
    id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255),
    title VARCHAR(100),
    subtitle VARCHAR(100),
    language CHAR(2),
    urlImage VARCHAR(200),

    PRIMARY KEY(id)
);

CREATE TABLE `pageTab` (
    id INT NOT NULL AUTO_INCREMENT,
    idPage INT NOT NULL,
    title VARCHAR(100),
    content TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `work`(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    suport VARCHAR(100),
    date INT(4),
    editor VARCHAR(100),
    place VARCHAR(100),
    author VARCHAR(100),
    language VARCHAR(100),
    keywords VARCHAR(200),
    description VARCHAR(100),

    PRIMARY KEY(id)
);