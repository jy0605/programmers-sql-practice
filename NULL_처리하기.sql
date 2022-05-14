-- programmers
-- https://programmers.co.kr/learn/courses/30/lessons/59410?language=oracle
-- NULL 처리하기
SELECT animal_type, case when name is null then 'No name' else name end as name, sex_upon_intake
from animal_ins
order by animal_id;