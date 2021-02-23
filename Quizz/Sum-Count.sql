SELECT SUM(population) FROM bbc WHERE region = 'Europe'


SELECT COUNT(name) FROM bbc WHERE population < 150000


AVG(), COUNT(), MAX(), MIN(), SUM()


'No result due to invalid use of the WHERE function'


SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')


SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region


SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)


Americas	732240
Middle East	13403102
South America	17740392
South Asia	9437710