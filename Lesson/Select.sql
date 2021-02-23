select name from world
where population > (select population from world where name='russia')


---------------------------------


select name  from world 
where gdp/population > (select gdp/population from world where name = 'united kingdom') and continent = 'europe'


---------------------------------


select name, continent  from world
where continent in (select continent from world where name in ('argentina','australia')) order by name


---------------------------------


select name, population from world
where population > (select population from world where name = 'canada') and population < (select population from world where name = 'poland')


---------------------------------


select name,concat(round(population/(select population from world where name = 'germany')*100, 0), '%') from world
where continent = 'europe'


---------------------------------


select name from world
where gdp >= all(select gdp from world where gdp >=0 and continent = 'europe') and continent != 'europe'


---------------------------------


select continent, name, area from world x
where area >= all (select area from world y where y.continent=x.continent and area>0)


---------------------------------


select continent, name from world x
where name <= all (select name from world y where y.continent=x.continent)


---------------------------------


select name, continent, population from world x
where 25000000 > all(select population from world y where x.continent = y.continent and y.population > 0)


---------------------------------


select name, continent from world x
where population > all(select population*3 from world y where x.continent = y.continent and population > 0 and y.name != x.name)