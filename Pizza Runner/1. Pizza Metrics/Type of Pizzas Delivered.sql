-- 4. How many of each type of pizza was delivered?

select customer_orders.pizza_id,
       count(customer_orders.pizza_id) as pizza_count
from runner_orders
join customer_orders
on customer_orders.order_id = runner_orders.order_id
where runner_orders.cancellation IS NULL
group by 1
