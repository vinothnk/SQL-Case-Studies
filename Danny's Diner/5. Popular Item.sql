-- 5. Which item was the most popular for each customer?

select sales.customer_id,
       menu.product_name,
       count(sales.customer_id) as times_bought
    from sales
    join menu
    on menu.product_id = sales.product_id
    group by 1,2
    ORDER BY 3 DESC