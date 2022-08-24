-- 10. What was the volume of orders for each day of the week?

select date_part('DOW', order_time) as DOW,
       count(*) as qty_pizza
    from customer_orders
    group by 1
    order by 1 ASC