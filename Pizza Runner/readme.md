<p align="center">
  <img src="https://user-images.githubusercontent.com/11970888/131030154-33168a11-9ff3-4437-8ca4-6766f7b8d8d5.png" width="700" position="center"/>
</p>

## Table of Contents
[Business Case](#businesscase)

[Entity Diagram](#diagram)

[Case Questions](#questions)



<a name="businesscase"/>

## Business Case

Danny had a business idea to create a Pizza Empire! But it's not only a pizza delivery, it's a special pizza delivery Uberized. Danny collected a lot of data to start his new business, and he wants help to explore the data and answer some questions and get some insights that will help the business to be unique and assertive.


<a name="diagram"/>

## Entity Diagram

<p align="center">
  <img src="https://user-images.githubusercontent.com/11970888/131030292-c7ff152e-5ac0-4ca1-957d-03c7e0bfa6f3.png" position="center"/>
</p>

<a name="questions"/>

## Case Questions

In this case study the first challenge is to clean and correct anything wrong with the original tables.
Once the correction is done, the questions were splitted by topics:

<details close>
  <summary> <b> A. Pizza Metrics </b> </summary>
  <br>
  <ol>
    <li>How many pizzas were ordered?</li>
    <li>How many unique customer orders were made?</li>
    <li>How many successful orders were delivered by each runner?</li>
    <li>How many of each type of pizza was delivered?</li>
    <li>How many Vegetarian and Meatlovers were ordered by each customer?</li>
    <li>What was the maximum number of pizzas delivered in a single order?</li>
    <li>For each customer, how many delivered pizzas had at least 1 change and how many had no changes?</li>
    <li>How many pizzas were delivered that had both exclusions and extras?</li>
    <li>What was the total volume of pizzas ordered for each hour of the day?</li>
    <li>What was the volume of orders for each day of the week?</li>
  </ol>
</details>

<details close>
  <summary> <b> B. Runner and Customer Experience </b> </summary>
  <br>
  <ol>
    <li>How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)</li>
    <li>What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?</li>
    <li>Is there any relationship between the number of pizzas and how long the order takes to prepare?</li>
    <li>What was the average distance travelled for each customer?</li>
    <li>What was the difference between the longest and shortest delivery times for all orders?</li>
    <li>What was the average speed for each runner for each delivery and do you notice any trend for these values?</li>
    <li>What is the successful delivery percentage for each runner?</li>
  </ol>
</details>

<details close>
  <summary> <b> C. Runner and Customer Experience </b> </summary>
  <br>
  <ol>
    <li>What are the standard ingredients for each pizza?</li>
    <li>What was the most commonly added extra?</li>
    <li>What was the most common exclusion?</li>
    <li>Generate an order item for each record in the customers_orders table in the format of one of the following:</li>
    <ul>
      <li>Meat Lovers</li>
      <li>Meat Lovers - Exclude Beef</li>
      <li>Meat Lovers - Extra Bacon</li>
      <li>Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers</li>
    </ul>
    <li>Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in front of any relevant ingredients</li>
    <ul>
      <li>For example: "Meat Lovers: 2xBacon, Beef, ... , Salami"</li>
    </ul>
    <li>What is the total quantity of each ingredient used in all delivered pizzas sorted by most frequent first?</li>
  </ol>
</details>



## Case Solutions

[Data cleaning and corrections](https://github.com/AlysterF/8week-SQL-challenge/blob/main/Case%20Study%20%232%20-%20Pizza%20Runner/00%20-%20Table%20Corrections.md)

[A. Pizza Metrics](https://github.com/AlysterF/8week-SQL-challenge/blob/main/Case%20Study%20%232%20-%20Pizza%20Runner/A%20-%20Pizza%20Metrics.md)

[B. Runner and Customer Experience](https://github.com/AlysterF/8week-SQL-challenge/blob/main/Case%20Study%20%232%20-%20Pizza%20Runner/B%20-%20Runner%20and%20Customer%20Experience.md)

[C. Ingredient Optmisation](https://github.com/AlysterF/8week-SQL-challenge/blob/main/Case%20Study%20%232%20-%20Pizza%20Runner/C%20-%20Ingredient%20Optimisation.md)


