SELECT
      pn.pizza_name,
      pt.topping_name
    FROM
      pizza_names pn
    JOIN
      pizza_ingredients pi ON pi.pizza_id = pn.pizza_id
    JOIN
      pizza_toppings pt ON pt.topping_id = pi.topping_id
    ORDER BY
      pn.pizza_name,
      pt.topping_name;  