-- programmers
-- Datetime에서 date로 형변환
-- to_char(datetime, 'YYYY-MM-DD') 활용
SELECT animal_id, name, to_char(datetime,'YYYY-MM-DD')
from animal_ins
order by animal_id;