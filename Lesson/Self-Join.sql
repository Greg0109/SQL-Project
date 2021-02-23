select count(name) from stops


---------------------------------


select id  from stops 
where name = 'craiglockhart'


---------------------------------


select id, name from stops
join route on id = stop
where num = '4' and company = 'lrt';


---------------------------------


select company, num, count(*) as cnt from route where stop=149 or stop=53
group by company, num
having cnt=2


---------------------------------


select a.company, a.num, a.stop, b.stop from route a 
join route b on (a.company=b.company and a.num=b.num)
where a.stop=53 and b.stop=149


---------------------------------


select a.company, a.num, stopa.name, stopb.name from route a 
join route b on (a.company=b.company and a.num=b.num)
join stops stopa on (a.stop=stopa.id)
join stops stopb on (b.stop=stopb.id)
where stopa.name='craiglockhart' and stopb.name='london road'


---------------------------------


select distinct a.company, a.num from route a 
join route b on (a.company =b.company and a.num=b.num)
join stops stopa on (a.stop=stopa.id)
join stops stopb on (b.stop=stopb.id)
where stopa.name='haymarket' and stopb.name='leith'


---------------------------------


select distinct a.company, a.num from route a
join route b on (a.num=b.num and a.company=b.company)
join stops stopa on (a.stop=stopa.id)
join stops stopb on (b.stop=stopb.id)
where stopa.name = 'craiglockhart' and stopb.name = 'tollcross'


---------------------------------


select distinct stopb.name, a.company, a.num from route a 
join route b on a.company = b.company and a.num = b.num
join stops stopa on a.stop = stopa.id
join stops stopb on b.stop = stopb.id
where stopa.name = 'craiglockhart';