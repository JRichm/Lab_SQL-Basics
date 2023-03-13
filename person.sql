-- PROBLEM ONE          Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    age INT,
    height INT,
    city VARCHAR(15),
    favorite_color VARCHAR(10)
);


-- PROBLEM TWO          Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Bryson', 24, 178, 'Simi Valley', 'Blue'),
('Jarron', 28, 186, 'Carson', 'Orange'),
('Hailey', 21, 168, 'Denver', 'Green'),
('Allan', 43, 175, 'Los Angeles', 'Light Blue'),
('Doug', 33, 180, 'Thousand Oaks', 'Yellow');


-- PROBLEM THREE        Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;


-- PROBLEM FOUR         Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height;


-- PROBLEM FIVE         Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;


-- PROBLEM SIX          Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;


-- PROBLEM SEVEN        Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;


-- PROBLEM EIGHT        Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person        -- this question was worded weird. nobody can be less than 20 'and' older than 30
WHERE age < 20 OR age > 30;


-- PROBLEM NINE         Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age <> 27;


-- PROBLEM TEN          Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'Red';


-- PROBLEM ELEVEN       Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';


-- PROBLEM TWELVE       Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';


-- PROBLEM THIRTEEN     Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');


-- PROBLEM FOURTEEN     Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person 
WHERE favorite_color IN ('Yellow', 'Purple');