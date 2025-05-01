# sql-restaurant-insights
Here, I analyzed menu and orders tables to uncover sales trends and customer behavior.

## 🍽️ Restaurant Sales & Customer Insights – SQL Project

Welcome to a data-driven exploration of restaurant performance!  
In this project, we analyze two key tables — `menu_items` and `order_details` — to uncover:

- 🔍 **Top-selling menu items**
- 📊 **Customer purchase patterns**
- 💡 **Actionable insights and recommendations** to improve sales and enhance customer experience

## 📁 Project Overview

This SQL project simulates real-world restaurant data and is designed to help answer business-critical questions like:
- What are the most popular items on the menu?
- Are there any high-performing categories or underperforming ones?
- What patterns can we identify in customer ordering behavior?

## 🛠️ Tools Used
- MySQL Workbench 

## Sample of a SQL Query used in the project

#### VIEW THE DETAILS OF THE HIGHEST SPEND ORDER (order_id = 440) WHAT INSIGHTS CAN YOU GATHER FROM THE DATA ?

```sql
SELECT category, COUNT(item_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id=440
GROUP BY category;
```


#### Insight gathered : this top order spent most of the amount on Italian items
####                    we should keep italian foods on our menu list as people tend to order them a lot !

## 🚀 Key Learnings
- Writing complex queries using `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`, etc.
- Extracting insights from relational data
- Translating raw data into business recommendations

## 📌 Outcomes
- Clear identification of best-selling dishes
- Data-backed understanding of customer behavior
- Recommendations to improve menu strategy and customer satisfaction
