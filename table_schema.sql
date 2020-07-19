-- CREATE TABLES 
--DROP TABLE authors, original_languages, genres, best_books,ratings_data
CREATE TABLE authors (
	id_author VARCHAR(10) PRIMARY KEY,
	author VARCHAR(40) NOT NULL);

SELECT * FROM authors; 


CREATE TABLE original_languages (
	id_language VARCHAR(10) PRIMARY KEY,
	original_language VARCHAR(20) NOT NULL);

SELECT * FROM original_languages; 


CREATE TABLE genres (
	id_genre VARCHAR(10) PRIMARY KEY,
	genre VARCHAR(25) NOT NULL);

SELECT * FROM genres; 

CREATE TABLE best_books (
	id_title VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	id_author VARCHAR(10) NOT NULL,
	id_language VARCHAR(10),
	id_genre VARCHAR(10),
	first_published INTEGER,
	approximate_sales FLOAT,
	best_ever_written BOOLEAN NOT NULL,
	best_seller BOOLEAN NOT NULL,
	FOREIGN KEY (id_author) REFERENCES authors(id_author),
	FOREIGN KEY (id_language) REFERENCES original_languages(id_language),
	FOREIGN KEY (id_genre) REFERENCES genres(id_genre));

SELECT * FROM best_books; 


CREATE TABLE ratings_data (
	id_rating VARCHAR(10) PRIMARY KEY,
	id_title VARCHAR(10) NOT NULL,
	average_rating FLOAT,
	ratings_count INTEGER,
	text_reviews_count INTEGER,
	FOREIGN KEY (id_title) REFERENCES best_books(id_title));

SELECT * FROM ratings_data; 
