-- programmers
-- https://programmers.co.kr/learn/courses/30/lessons/59408?language=oracle
-- level 2
-- count(distinct), is not null
SELECT count(distinct name)
from animal_ins
where name is not null;