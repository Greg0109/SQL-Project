SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000


Table E


SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'


Table C


Table C


SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000



 SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')
-------------------------------------------

SELECT name
  FROM world
 WHERE name LIKE 'U%'



SELECT population
  FROM world
 WHERE name = 'United Kingdom'



'name' should be name



Nauru	990



SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')



SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')



Brazil
Colombia
