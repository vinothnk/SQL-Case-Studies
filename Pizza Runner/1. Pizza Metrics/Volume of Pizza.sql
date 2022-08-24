-- 9. What was the total volume of pizzas ordered for each hour of the day?

select extract('hour' from order_time) as hour_of_day,
       count(*) as qty_pizza
    from customer_orders
    group by 1
    order by 1 ASC