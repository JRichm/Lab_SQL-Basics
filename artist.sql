-- PROBLEM ONE          Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist
VALUES (276, 'MUST DIE!'), (277, 'Deftones'), (278, 'Kinneret');


-- PROBLEM TWO          Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;


-- PROBLEM THREE        Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name
LIMIT 5;


-- PROBLEM FOUR         Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';


-- PROBLEM FIVE         Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';