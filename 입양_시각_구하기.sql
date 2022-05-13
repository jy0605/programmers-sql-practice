-- programmers
-- 입양 시각 구하기(1)
-- https://programmers.co.kr/learn/courses/30/lessons/59412?language=oracle

-- to_char(datetime, 'format')

select to_char(datetime,'HH24') hour, count(*) 
from animal_outs
where to_char(datetime,'HH24') > 8 and to_char(datetime,'HH24') < 20
group by to_char(datetime,'HH24')
order by to_char(datetime,'HH24');