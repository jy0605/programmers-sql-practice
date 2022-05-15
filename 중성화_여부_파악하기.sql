-- programmers
-- 중성화 여부 파악하기
-- https://programmers.co.kr/learn/courses/30/lessons/59409?language=oracle
-- level2
-- case when .. then .. else .. end
-- like 문
select animal_id, name, 
		case when sex_upon_intake like '%Neutered%' or sex_upon_intake like '%Spayed%' then 'O' else 'X' end
from animal_ins
order by animal_id;