select category, sum(quantity) as total_quantity, sum(price) as total_price
from orders
inner join order_details using(order_id)
inner join products using(product_id)
where created_at>='2020-01-01'
and delivery_at IS NOT NULL
group by 1
order by 2 desc
limit 5
