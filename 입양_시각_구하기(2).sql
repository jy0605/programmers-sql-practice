-- programmers
-- 입양 시각 구하기(2)
-- https://programmers.co.kr/learn/courses/30/lessons/59413
-- level 4
-- group by
-- rownum from dual connect by rownum<100 (print number in specific range)

select sub2.hours, count(sub.hour)
from (
	SELECT to_char(datetime, 'HH24') as hour
	from animal_outs
) sub right outer join 
(
	select rownum-1 hours from dual connect by rownum<=24
) sub2 on sub.hour = sub2.hours
group by sub2.hours
order by sub2.hours;