select population from world
  where name = 'germany'

--------------------------------

select name
  from world
 where population > 200000000


--------------------------------


select name,gdp/population
  from world
 where population > 200000000


--------------------------------


select name, population/1000000
    from world
where continent = 'south america'


--------------------------------


select name, population
    from world
where name in ('france','germany','italy')


--------------------------------

select name
  from world
where name like '%united%'


---------------------------------

select name, population, area
    from world
where population > 250000000 or area > 3000000


---------------------------------

select name, population, area
    from world
where ( population > 250000000 and area < 3000000 ) or ( area > 3000000 and population < 250000000 )

----------------------------------

select name, round(population / 1000000, 2), round(gdp / 1000000000, 2)
  from world
where continent = 'south america'

----------------------------------

select name, round(gdp / population, -3)
  from world
where gdp > 1000000000000

---------------------------------

select name,capital
from world
where len(name) = len(capital)

----------------------------------

select name, capital
from world
where left(name, 1) = left(capital, 1) and (name <> capital)

----------------------------------

select name
from world
where name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%' and name not like '% %'