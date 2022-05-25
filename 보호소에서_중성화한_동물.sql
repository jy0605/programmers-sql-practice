-- programmers
-- 보호소에서 중성화한 동물
-- https://programmers.co.kr/learn/courses/30/lessons/59045?language=oracle
-- JOIN, Like
SELECT animal_id, animal_type, name
from (
    select ins.animal_id, ins.animal_type, ins.name
    from animal_ins ins inner join animal_outs outs on ins.animal_id = outs.animal_id
    where ins.sex_upon_intake like 'intact%' 
    and (outs.sex_upon_outcome like 'Spayed%' or outs.sex_upon_outcome like 'Neutered%') 
) sub
order by animal_id;