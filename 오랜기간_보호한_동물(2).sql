-- Programmers_오랜기간 보호한 동물(2)
select outs.*, rownum rn
from animal_ins ins right outer join animal_outs outs on ins.animal_id = outs.animal_id
where ins.animal_id is null
order by (outs.datetime-ins.datetime) desc;
-- 코드를 입력하세요
/*SELECT sub.animal_id, sub.name
from (
    select outs.*, rownum rn from animal_ins ins right outter join animal_outs outs on ins.animal_id = outs.animal_id
    where ins.animal_id is null
    order by (outs.datetime-ins.datetime) desc
) sub
where sub.rn < 3;*/