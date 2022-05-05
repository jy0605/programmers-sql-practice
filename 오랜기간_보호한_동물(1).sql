-- 2022.5.5 programmers 오랜기간 보호한 동물(1) 푸는중
select sub.name, sub.datetime
from(
    select ins.name, ins.datetime, rownum rn
    from animal_ins ins left outer join animal_outs outs on ins.animal_id = outs.animal_id
    where outs.animal_id is null
    order by datetime
) sub
where sub.rn < 4;

--- 틀렸어요! 원인 파악중