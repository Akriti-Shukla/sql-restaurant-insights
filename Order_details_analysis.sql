-- NOW LET'S EXPLORE THE ORDER_DETAILS TABLE!!!

SELECT * FROM order_details;

-- WHAT IS THE DATE RANGE OF THE TABLE ?

SELECT * FROM order_details
ORDER BY order_date;

SELECT MIN(order_date) FROM order_details;

SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- How many orders were made within this date range?

SELECT COUNT(DISTINCT(order_id)) FROM order_details;

-- How many items were ordered within this date range ?

SELECT COUNT(*) FROM order_details;

-- Which order had the most number of items ?

SELECT order_id, COUNT(item_id) AS num_of_items
FROM order_details
GROUP BY order_id
ORDER BY num_of_items desc;

-- How many orders had more than 12 items ?

SELECT order_id, COUNT(item_id) AS num_of_items
FROM order_details
GROUP BY order_id
HAVING num_of_items >12
ORDER BY num_of_items desc;

SELECT COUNT(*)
FROM
(SELECT order_id, COUNT(item_id) AS num_of_items
FROM order_details
GROUP BY order_id
HAVING num_of_items >12) AS num_of_orders;
