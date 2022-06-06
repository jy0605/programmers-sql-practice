-- programmers
-- 어린 동물 찾기
-- basic select, not like
-- level 1
SELECT animal_id, name
from animal_ins
where intake_condition not like '%Aged%'
order by animal_id;