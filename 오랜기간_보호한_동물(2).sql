-- Programmers_오랜기간 보호한 동물(2)
-- https://programmers.co.kr/learn/courses/30/lessons/59411
select animal_id, name
from(
    select outs.animal_id, outs.name
    from animal_ins ins inner join animal_outs outs on ins.animal_id = outs.animal_id
    where ins.animal_id is not null
    order by (outs.datetime-ins.datetime) desc
)
where rownum < 3;