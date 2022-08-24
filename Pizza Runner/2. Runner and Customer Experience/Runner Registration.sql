-- 1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)

select date_part('week', registration_date) as week_count,
       count(*) as no_of_runners
    from runners
    group by 1
    order by 2 DESC