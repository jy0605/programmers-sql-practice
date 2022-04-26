-- programmers 59041 "동명 동물 수 찾기"
-- group by, having, is not null
select name, count(*)
from animal_ins
where name is not null
group by name
having count(*) > 1
order by name;