-- rownum
-- order by
select ins.datetime
from (select datetime from animal_ins order by datetime) ins
where rownum = 1;