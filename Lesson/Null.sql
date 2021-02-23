select name from teacher
where dept is null


---------------------------------


select teacher.name,dept.name from teacher
inner join dept on (teacher.dept = dept.id)


---------------------------------


select teacher.name, dept.name from teacher 
left join dept on (teacher.dept=dept.id)


---------------------------------


select teacher.name, dept.name from teacher 
right join dept on (teacher.dept=dept.id)


---------------------------------


select coalesce(teacher.name, 'none'), coalesce(dept.name, 'none') from teacher 
left join dept on (teacher.dept=dept.id)


---------------------------------


select count(name), count(mobile) from teacher


---------------------------------


select count(name), count(mobile) from teacher


---------------------------------


select dept.name, count(teacher.name) from teacher 
right join dept on (teacher.dept=dept.id)
group by dept.name 


---------------------------------


select teacher.name,
case when dept.id = 1 then 'sci' when dept.id = 2 then 'sci' else 'art' end
from teacher 
left join dept on (teacher.dept=dept.id)


---------------------------------


select teacher.name,
case when dept.id = 1 then 'sci' when dept.id = 2 then 'sci' when dept.id = 3 then 'art' else 'none' end
from teacher 
left join dept on (dept.id=teacher.dept)