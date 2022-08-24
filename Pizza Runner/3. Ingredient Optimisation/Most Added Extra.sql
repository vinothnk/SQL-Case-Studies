-- 2. What was the most commonly added extra?

select pizza_toppings.topping_name,
       count(extra_id) as total_added
from extras
join pizza_toppings
on pizza_toppings.topping_id = extras.extra_id
group by 1
order by 2 DESC
limit 1