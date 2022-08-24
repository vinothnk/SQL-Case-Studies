-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?

select menu.product_name,
       count(sales.product_id)
    from menu
    join sales
    on sales.product_id = menu.product_id
    group by 1
    order by 2 DESC
    LIMIT 1