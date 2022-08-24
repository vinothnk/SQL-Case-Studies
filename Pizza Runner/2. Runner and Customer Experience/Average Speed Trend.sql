-- 6.1. Do you notice any trend for these values?

SELECT runner_id,
       order_id,
       distance,
       duration,
       DATE_PART('hour',pickup_time) AS pickup_hour,
       to_char(pickup_time, 'day') AS pickup_weekday,
       CAST(distance / duration * 60 AS DECIMAL(4,2)) AS speed_km_h
FROM   runner_orders 
WHERE  distance IS NOT NULL
ORDER  BY runner_id, order_id