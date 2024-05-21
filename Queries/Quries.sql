-- Select 

SELECT name, genre
FROM  movies;
SELECT name, genre, year
FROM  movies;

-- As - Allows you to rename columns
SELECT name AS 'Redemption'
FROM movies;
SELECT imdb_rating AS 'IMDb'
FROM movies;

-- Distinct- It filters out all duplicate values in the specified column(s).

SELECT DISTINCT genre
FROM movies;

SELECT DISTINCT year 
FROM movies;

-- Where - Restrict Query results to obtain only the info we want 

SELECT * 
FROM movies
WHERE imdb_rating < 5; 

SELECT * 
FROM  movies 
WHERE year > 2014;

-- Like Part 1- Used to compare similar values 

SELECT * 
FROM movies 
WHERE name LIKE 'Se_en';

-- Like Part 2 - % can be used with LIKE wildcard, Like will pick data with 
--words you're looking for, regardless of its position

SELECT *
FROM movies 
WHERE name LIKE '%man%';

SELECT *
FROM movies 
WHERE name LIKE 'The %';

-- Is Null - Unknown values are indicated by NULL
SELECT name
FROM movies 
WHERE imdb_rating IS NULL;


-- Between - Used in a WHERE clause to filter results ina certain ranges 

SELECT * 
FROM movies
WHERE name BETWEEN 'D'  AND 'G';

SELECT * 
FROM movies
WHERE year BETWEEN 1970  AND 1979;

--  And - Used to combine multiple conditions in a WHERE clause to make the result more specific 

SELECT * 
FROM movies
WHERE year BETWEEN 1970  AND 1979
AND imdb_rating > 8;


SELECT * 
FROM movies
WHERE year < 1985
AND genre = 'horror';

-- Or - Displays a row if any condition is true 

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

   SELECT *
FROM movies
WHERE genre  = 'romance'
   OR genre = 'comedy';



--ORDER BY - Sorts the data, can be useful to analyse data easier either ASC or DESC, written AFTER the column name 

SELECT name, year
FROM movies
ORDER BY name;

SELECT name, year, imdb_rating
FROM movies
ORDER BY   imdb_rating DESC;

-- Limit - Allows you to specify the max number of rows in the result 

SELECT *
FROM movies 
ORDER BY imdb_rating DESC
LIMIT 3;

-- Case - Allows you to create different outputs 
-- SQL's version of IF statements 

SELECT name,
CASE 
   WHEN genre = 'romance' THEN 'Chill'
   WHEN genre = 'comedy' THEN 'Chill' 
   ELSE  'Intense'
END AS 'mood'
FROM movies;













