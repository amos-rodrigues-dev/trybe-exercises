-- Exeercise 1
INSERT INTO Movies (title, director, year, length_minutes)
VALUES
	('Monstros SA', 'Pete Docter', 2001, 92),
    ('Procurando Nemo', 'John Lasseter', 2003, 107),
    ('Os Incríveis', 'Brad Bird', 2004, 116),
    ('WALL-E', 'Pete Docter', 2008, 104);

SELECT * FROM Movies;

-- Exercise 2
SELECT * FROM BoxOffice;

INSERT INTO BoxOffice(movie_id, rating, domestic_sales, international_sales)
  VALUES (9, 6.8, 450000000, 370000000);

-- Exercise 3
SET SQL_SAFE_UPDATES = 0;

UPDATE Movies
SET director = 'Andrew Staton'
WHERE title = 'Procurando Nemo';

-- Exercise 4
UPDATE Movies
SET title = 'Ratatouille', `year` = 2007
WHERE title = 'ratatui';

-- Exercise 5
SELECT id, title FROM Movies WHERE title in ('Monstros SA', 'Os Incríveis', 'WALL-E');

INSERT INTO BoxOffice(movie_id, rating, domestic_sales, international_sales)
VALUES
	(8, 8.5, 300000000, 250000000),
    (10, 7.4, 460000000, 510000000),
    (11, 9.9, 290000000, 280000000);

-- Exercise 6
DELETE FROM Movies 
WHERE
    title = 'WALL-E';

DELETE FROM BoxOffice 
WHERE
    movie_id = 11;

-- Exercise 7
SELECT id, title FROM Movies WHERE director = 'Andrew Staton';

DELETE FROM Movies
WHERE 
	director = 'Andrew Staton';

DELETE FROM BoxOffice 
WHERE
    movie_id IN (SELECT id FROM Movies WHERE director = 'Andrew Staton');

-- Exercise 8
SELECT * FROM BoxOffice WHERE domestic_sales > 400000000;

UPDATE BoxOffice
SET rating = 9.0
WHERE domestic_sales > 400000000;

-- Exercise 9
SELECT * FROM BoxOffice WHERE international_sales < 300000000 AND domestic_sales > 200000000;

UPDATE BoxOffice
SET rating = 6.0
WHERE international_sales < 300000000 AND domestic_sales > 200000000;

-- Exercise 10
SELECT * FROM Movies WHERE length_minutes < 100;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Movies
WHERE length_minutes < 100;

DELETE FROM BoxOffice 
WHERE
    movie_id IN (SELECT id FROM Movies WHERE length_minutes < 100);

