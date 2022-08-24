with table1 as
(SELECT  ro.order_id,
        DATE_PART('minute', ro.pickup_time - co.order_time) +
        DATE_PART('seconds', ro.pickup_time - co.order_time)/60 as minutes,
        count(co.pizza_id) as qty_pizza
             FROM
        runner_orders ro
      JOIN
        customer_orders co ON co.order_id = ro.order_id
        where DATE_PART('minute', ro.pickup_time - co.order_time) +
        DATE_PART('seconds', ro.pickup_time - co.order_time)/60 IS NOT NULL
        group by 1,2)
        
select qty_pizza,
       round(cast(avg(minutes) as decimal),2) as avg_prep_time
    from table1
    group by 1
    order by 1