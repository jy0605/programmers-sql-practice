select cart_id
from (
-- 여기에서 cart_id와 name으로 묶어서 count를 센다.
    select cart_id, name, count(*) as canmcount
    from cart_products
    where name in ('Milk', 'Yogurt')
    group by cart_id, name
    order by cart_id
)
-- 여기에서 1차적으로 한 품목을 두개이상 담는 사람이 걸러진다.
where canmcount < 2
-- 그 후 cart_id로 묶어주면 한 품목만 담았던 사람은 count시 1이 된다.
group by cart_id
-- 그럼 1 이상인 사람만 출력해주면 된다.
having count(*) > 1
order by cart_id;