-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

select SALES.CUSTOMER_ID,
       SUM(MENU.price * CASE WHEN MENU.product_name = 'sushi' THEN 20 ELSE 10 END) AS TOTAL_POINTS
    FROM SALES
    JOIN MENU
    ON SALES.PRODUCT_ID = MENU.PRODUCT_ID
    GROUP BY 1
    order by 1