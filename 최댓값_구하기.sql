-- programmers
-- 최댓값 구하기
-- rownum (or max?)
-- level 1
SELECT *
from (
    select datetime
    from animal_ins
    order by datetime desc 
)
where rownum = 1;
