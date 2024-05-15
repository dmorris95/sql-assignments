CREATE DATABASE fitness_center_db;
use fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(id)
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

CREATE TABLE Trainers (
	id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
    );


INSERT INTO Members (id, name, age, trainer_id)
VALUES (1, 'John Smith', 25, NULL),
		(2, 'Steve Johns', 36, NULL),
        (3, 'Richard Evans', 42, NULL),
        (4, 'Jane Doe', 33, NULL);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 4, '2024-06-04', 'Morning Session', 'Yoga Class'),
		(2, 2, '2024-06-05', 'Evening Session', 'Weight Room'),
        (3, 3, '2024-07-06', 'Afternoon Session', 'Power lifting');

UPDATE WorkoutSessions SET session_time = 'Evening Session' WHERE member_id = 4 and session_date = '2024-06-04';

DELETE FROM Members WHERE id = 1;
        