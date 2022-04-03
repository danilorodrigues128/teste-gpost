-- Command to create the database
CREATE DATABASE `myDatabase` IF NOT EXISTS;

-- USE `myDatabase`

DROP TABLE user;
CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    description text,
    showUser BOOLEAN DEFAULT 0,
    urlImage VARCHAR(255),
    hash CHAR(32),

    PRIMARY KEY(id)
);

DROP TABLE page;
CREATE TABLE page(
    id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255),
    title VARCHAR(255),
    subtitle VARCHAR(255),
    language CHAR(2),
    urlImage VARCHAR(255),

    PRIMARY KEY(id)
);

DROP TABLE pagetab;
CREATE TABLE pagetab (
    id INT NOT NULL AUTO_INCREMENT,
    idPage INT NOT NULL,
    title VARCHAR(255),
    content TEXT,
    
    PRIMARY KEY(id)
);

DROP TABLE work;
CREATE TABLE work(
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

    PRIMARY KEY(id)
);

CREATE TABLE `arab`(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    suport VARCHAR(255),
    date INT(4),
    author VARCHAR(255),
    language VARCHAR(255),
    keywords VARCHAR(255),
    description VARCHAR(255),

    PRIMARY KEY(id)
);

CREATE TABLE `log`(
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
    content TEXT,

    PRIMARY KEY(id)
);