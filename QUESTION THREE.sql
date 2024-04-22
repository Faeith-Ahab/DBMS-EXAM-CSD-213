-- Directors
CREATE TABLE Directors (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    series_id INT REFERENCES Series(series_id),
    episode_id INT REFERENCES Episodes(episode_id)
);

-- Actors 
CREATE TABLE Actors (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    series_id INT REFERENCES Series(series_id)
);

-- Episodes 
CREATE TABLE Episodes (
    episode_id SERIAL PRIMARY KEY,
    series_id INT REFERENCES Series(series_id),
    actor_id INT REFERENCES Actors(actor_id),
    director_id INT REFERENCES Directors(director_id),
    episode_number INT,
    title VARCHAR(50),
    air_date DATE
);

-- Sample data insertion (for Series and Episodes tables)
INSERT INTO Series (title, genre, release_date) 
VALUES
('Science Max', 'Science', '2020-02-20'),
('Math Max', 'Math', '2010-01-10'),
('English Max', 'Comedy', '2000-02-01');

INSERT INTO Episodes (series_id, episode_number, title, air_date) 
VALUES
(1, 1, 'Pries', '2009-01-20'),
(1, 2, 'Twice', '2009-01-27'),
(2, 1, 'Thrice', '2001-04-17'),
(2, 2, 'Fourth', '2001-04-24'),
(3, 1, 'Jesus', '2016-07-15'),
(3, 2, 'Christ', '2016-07-15');

-- Sample data insertion (for Actors and Directors tables)
INSERT INTO Actors (actor_name, age, gender, series_id) 
VALUES
('Faith Ah', 20, 'Female', 1),
('Fay A', 42, 'Female', 1),
('Feis Ari', 30, 'Male', 2),
('Fae Am', 56, 'Male', 2);

INSERT INTO Directors (director_name, age, gender, series_id, episode_id) 
VALUES
('Lorde', 35, 'Male', 1, 1),
('Davis', 54, 'Male', 2, 2),
('Harvey', 40, 'Male', 3, 3);
