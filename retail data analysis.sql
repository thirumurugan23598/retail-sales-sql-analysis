1 — Total Revenue
SELECT SUM(Total_Revenue) AS total_revenue
FROM sales;

2 — Total Profit by Item Type
SELECT Item_Type, SUM(Total_Profit) AS total_profit
FROM sales
GROUP BY Item_Type
ORDER BY total_profit DESC;

3 — Revenue by Country
SELECT Country, SUM(Total_Revenue) AS revenue
FROM sales
GROUP BY Country
ORDER BY revenue DESC
LIMIT 5;

4 — Sales Channel Performance
SELECT Sales_Channel, SUM(Units_Sold) AS total_units
FROM sales
GROUP BY Sales_Channel;

5 — Monthly Revenue Trend
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS month,
       SUM(Total_Revenue) AS revenue
FROM sales
GROUP BY month
ORDER BY month;