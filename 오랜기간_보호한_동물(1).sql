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

-- 2022.5.8 원인 찾음
-- 위와 같이 풀 경우, rn이 datetime 순서대로 매겨지지 않음.
-- 따라서 rn은 바깥 쿼리에서 조치해주어야 함.
-- 아래는 정답 쿼리
select sub.name, sub.datetime
from(
    select name, datetime
    from animal_ins 
    where animal_id not in (select animal_id from animal_outs)
    order by datetime
) sub
where rownum < 4;