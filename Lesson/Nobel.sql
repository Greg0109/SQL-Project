select yr, subject, winner
  from nobel
 where yr = 1950


 -----------------------------


 select winner
  from nobel
 where yr = 1962
   and subject = 'literature'


------------------------------


select yr, subject
from nobel
where winner = 'albert einstein'


--------------------------------


select winner
from nobel
where yr >= 2000 and subject = 'peace'


----------------------------------

select yr, subject, winner
from nobel
where yr >= 1980 and yr <= 1989 and subject = 'literature'

----------------------------------


select * from nobel
where winner = 'theodore roosevelt' or winner = 'woodrow wilson' or winner = 'jimmy carter' or winner = 'barack obama'


----------------------------------


select winner from nobel
where winner like 'john%'


----------------------------------


select yr, subject, winner from nobel
where (subject = 'physics' and yr = 1980) or (subject = 'chemistry' and yr = 1984)


------------------------------------

select yr, subject, winner from nobel
where yr = 1980 and (subject <> 'chemistry' and subject <> 'medicine')

------------------------------------

select yr, subject, winner from nobel
where (yr < 1910 and subject = 'medicine') or (yr >= 2004 and subject = 'literature')

------------------------------------

select * from nobel
where winner = 'peter grünberg'

------------------------------------

select * from nobel
where winner = 'eugene o''neill'

------------------------------------

select winner, yr, subject from nobel
where winner like 'sir%'
order by yr desc, winner
