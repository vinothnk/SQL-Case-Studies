-- 5. How many Vegetarian and Meatlovers were ordered by each customer?

select pizza_names.pizza_name,
       count(pizza_names.pizza_id) as pizza_count
from customer_orders
join pizza_names
on pizza_names.pizza_id = customer_orders.pizza_id
group by 1

