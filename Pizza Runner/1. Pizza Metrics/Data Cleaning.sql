with table1 as
(select *,
 case 
when distance = 'null' then '0 km' end as updated_distance,
case
when cancellation = 'Restaurant Cancellation' then 'Restaurant Cancellation'
when cancellation = 'Customer Cancellation' then 'Customer Cancellation'
when cancellation = '' then 'null'
when cancellation = 'null' then 'null'
       when cancellation IS NULL then 'null' 
        end as cancelled
from runner_orders)

select *,
(regexp_matches(distance, '[0-9]+\.?[0-9]*'))[1]::numeric as distance_extract,
       DATE(pickup_time) as pickup_date,
       date_part('hour', to_timestamp(pickup_time, 'yy-mm-dd HH24:MI:SS.MS')) as hour,
       date_part('minute', to_timestamp(pickup_time, 'yy-mm-dd HH24:MI:SS.MS')) as minute,
       date_part('seconds', to_timestamp(pickup_time, 'yy-mm-dd HH24:MI:SS.MS')) as seconds,
       date_part('ms', to_timestamp(pickup_time, 'yy-mm-dd HH24:MI:SS.MS')) as milliseconds
       from table1