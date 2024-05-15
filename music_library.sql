create database music_library_db;
use music_library_db;
create TABLE Albums (
	album_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    
    release_year YEAR NOT NULL,
    total_tracks INT NOT NULL
    );

create TABLE Genre (
	id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL,
    genre_description VARCHAR(500) NOT NULL
    );

create TABLE Artist (
	id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    artist_form_date DATE NOT NULL
    );
    
ALTER TABLE Albums 
	ADD total_duration_minutes INT NOT NULL;
    
ALTER TABLE Albums
	ADD FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    ADD FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
    