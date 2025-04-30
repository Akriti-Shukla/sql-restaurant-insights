-- Now Let's analyze Customer Behavior

-- Combine the menu_items and order_details tables into a single table

SELECT * FROM menu_items;

SELECT * FROM order_details;

-- menu_item_id & item_id - can be used for joining the tables
-- left join is used here because we wanted to retain all the transaction details in the final joined table
SELECT * 
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id; 

-- What were the least and most ordered items ? What categories were they in ?

-- LEAST ORDERED ITEM
SELECT item_name, COUNT(order_details_id) AS num_of_purchases 
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name
ORDER BY num_of_purchases
LIMIT 1;


-- MOST ORDERED ITEM
SELECT item_name, COUNT(order_details_id) AS num_of_purchases 
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name
ORDER BY num_of_purchases DESC
LIMIT 1;

-- MOST AND LEAST ORDERED ITEMS WITH THEIR CATEGORIES
SELECT item_name, category, COUNT(order_details_id) AS num_of_purchases 
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name,category
ORDER BY num_of_purchases DESC
LIMIT 1;

SELECT item_name, category, COUNT(order_details_id) AS num_of_purchases 
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name,category
ORDER BY num_of_purchases
LIMIT 1;

-- WHAT WERE THE TOP 5 ORDERS THAT SPENT THE MOST MONEY ?

SELECT order_id, SUM(price) AS total_spent
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY order_id
ORDER BY total_spent DESC
LIMIT 5;

-- VIEW THE DETAILS OF THE HIGHEST SPEND ORDER. WHAT INSIGHTS CAN YOU GATHER FROM THE DATA ?

SELECT category, COUNT(item_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id=440
GROUP BY category;

-- insight gathered : this top order spent most of the amount on Italian items 

-- VIEW THE DETAILS OF THE TOP 5 HIGHEST SPEND ORDERS AND GATHER INSIGHTS ACCORDINGLY!!

SELECT category, COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category
ORDER BY num_items DESC;

SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category, order_id
ORDER BY num_items DESC;

-- Insight gathered is - that we should keep italian foods on our menu list as people tend to order them a lot !






