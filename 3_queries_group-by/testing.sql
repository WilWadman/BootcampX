List each country in the same continent as 'Brazil'.
SELECT name FROM world WHERE continent = 
(SELECT continent 
FROM world WHERE name = 'Brazil')


List each country and its continent in the same continent as 'Brazil' or 'Mexico'.
SELECT name, continent FROM world
WHERE continent IN
  (SELECT continent 
     FROM world WHERE name='Brazil'
                   OR name='Mexico')
