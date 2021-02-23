select matchid, player
from goal 
where  teamid = 'ger'


------------------------------------


select id,stadium,team1,team2
from game
where id = 1012


------------------------------------


select team1, team2, player
from game join goal on (id=matchid and player like ('mario%'))


------------------------------------


select player, teamid, coach, gtime
  from goal join eteam on (gtime <= 10 and teamid = id)


------------------------------------


select mdate, teamname
from game join eteam on (team1=eteam.id and coach = 'fernando santos')


------------------------------------


select player
from game join goal on (stadium = 'national stadium, warsaw' and id = matchid)


------------------------------------


select player
from game join goal on (stadium = 'national stadium, warsaw' and id = matchid)


------------------------------------


select distinct player from game join goal on matchid = id 
where ((team1='ger' or team2='ger') and teamid!='ger')


------------------------------------


select teamname, count(player) from eteam join goal on id=teamid
group by teamname


------------------------------------


select stadium, count(player) from game join goal on matchid=id 
group by stadium


------------------------------------


select matchid,mdate,count(player) from game join goal on matchid = id 
where (team1 = 'pol' or team2 = 'pol') group by matchid, mdate


------------------------------------


select matchid,mdate,count(player) from goal join game on id=matchid
where teamid = 'ger' group by matchid,mdate


------------------------------------


select mdate,team1,sum(case when teamid = team1 then 1 else 0 end) as score1, team2,sum(case when teamid = team2 then 1 else 0 end) as score2 from game left join goal on (id = matchid)
group by mdate,team1,team2 order by mdate, matchid, team1, team2


------------- more join --------------


select id, title
from movie
where yr=1962


------------------------------------


select yr
from movie
where title = 'citizen kane'


------------------------------------


select id, title, yr from movie 
where title like 'star trek%' order by yr


------------------------------------


select id from actor 
where name = 'glenn close'


------------------------------------


select id from movie
where title = 'casablanca'


------------------------------------


select name from actor, casting
where id=actorid and movieid = 11768


------------------------------------


select name from actor, casting 
where id=actorid and movieid = (select id from movie where title = 'alien')


------------------------------------


select title
from movie join casting on (id=movieid and actorid = (select id from actor where name = 'harrison ford'))


------------------------------------


select title from movie 
join casting on (id=movieid and actorid = (select id from actor where name = 'harrison ford' and ord != 1))


------------------------------------


select title, name from movie 
join casting on (id=movieid) join actor on (actor.id = actorid)
where ord=1 and  yr = 1962


------------------------------------


select yr,count(title) from movie 
join casting on movie.id=movieid join actor on actorid=actor.id
where name='rock hudson' group by yr having count(title) > 2


------------------------------------


select title, name from movie
join casting x on movie.id = movieid
join actor on actor.id =actorid
where ord=1 and movieid in (select movieid from casting y
join actor on actor.id=actorid
where name='julie andrews')


------------------------------------


select name from actor 
join casting on (id=actorid and (select count(ord) from casting where actorid = actor.id and ord=1)>=15)
group by name


------------------------------------


select title, count(actorid) from movie 
join casting on movie.id = movieid 
where yr = 1978 group by title order by count(actorid) desc, title


------------------------------------


select distinct name from actor 
join casting on id=actorid
where movieid in (select movieid from casting join actor on (actorid=id and name='art garfunkel')) and name != 'art garfunkel'
