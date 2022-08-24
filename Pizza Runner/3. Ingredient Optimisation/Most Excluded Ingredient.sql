--  3. What was the most common exclusion?

select pizza_toppings.topping_name,
       count(exclusion_id) as total_excluded
    from exclusions
    join pizza_toppings
    on pizza_toppings.topping_id = exclusions.exclusion_id
    group by 1
    order by 2 DESC
    limit 1
