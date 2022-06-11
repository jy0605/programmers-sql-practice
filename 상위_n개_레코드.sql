-- programmers
-- https://programmers.co.kr/learn/courses/30/lessons/59405?language=oracle
-- 상위 n개 레코드
-- basic select
-- level1
-- rownum
select *
from (
    SELECT name
    from animal_ins
    order by datetime
) sub
where rownum = 1;