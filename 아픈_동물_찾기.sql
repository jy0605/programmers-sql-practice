-- Programmers
-- https://programmers.co.kr/learn/courses/30/lessons/59036
-- 아픈동물찾기
-- level1
-- basic select
SELECT animal_id, name
from animal_ins
where intake_condition='Sick'
order by animal_id;