-- programmers
-- 이름이 없는 동물의 아이디
-- is null
SELECT animal_id
from animal_ins
where name is null
order by animal_id;