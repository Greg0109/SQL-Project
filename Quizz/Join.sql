game  JOIN goal ON (id=matchid)


matchid, teamid, player, gtime, id, teamname, coach


SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid


DEN	9 June 2012
GER	9 June 2012


  SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'


SELECT DISTINCT player, teamid, gtime
  FROM game JOIN goal ON matchid = id
 WHERE stadium = 'Stadion Miejski (Wroclaw)'
   AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'))



Netherlands	2
Poland	2
Republic of Ireland	1
Ukraine	2

---- MORE JOIN -----

SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget


SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid


SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC


Table-B
"Crocodile" Dundee
Crocodile Dundee in Los Angeles
Flipper
Lightning Jack


SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351


link the director column in movies with the primary key in actor
connect the primary keys of movie and actor via the casting table


Table-B
A Bronx Tale	1993
Bang the Drum Slowly	1973
Limitless	2011