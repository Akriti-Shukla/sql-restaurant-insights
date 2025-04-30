-- LET'S EXPLORE THE MENU_ITEMS TABLE!!

USE restaurant_db;

-- VIEW THE MENU

SELECT * FROM menu_items;

-- TO FIND NO. OF ITEMS ON THE MENU

SELECT COUNT(*) FROM menu_items;

-- TO FIND THE LEAST AND MOST EXPENSIVE ITEMS ON THE MENU

SELECT * FROM menu_items
ORDER BY price
LIMIT 1;

SELECT * FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- How many Italians dishes are on the menu ?

SELECT COUNT(*) FROM menu_items
WHERE category='Italian';


-- What are the least and most expensive Italian Dishes on the menu ?

SELECT *
FROM menu_items
WHERE category='Italian'
ORDER BY price
LIMIT 1;

SELECT *
FROM menu_items
WHERE category='Italian'
ORDER BY price DESC
LIMIT 1;

-- How many dishes are in each category ?

SELECT category, COUNT(menu_item_id) AS number_of_dishes
FROM menu_items
GROUP BY category;


-- What is the average dish price within each category?

SELECT category, AVG(price) AS avg_price_of_dishes
FROM menu_items
GROUP BY category
ORDER BY avg_price_of_dishes DESC;




