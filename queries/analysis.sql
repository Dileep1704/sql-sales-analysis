-- =====================================
-- E-COMMERCE SALES ANALYSIS USING SQL
-- =====================================

-- 1. Check Table Structure
DESCRIBE sales_data;

-- =====================================
-- DATA EXPLORATION
-- =====================================

-- 2. View Sample Data
SELECT * 
FROM sales_data
LIMIT 10;

-- 3. Total Number of Orders
SELECT COUNT(*) AS total_orders
FROM sales_data;

-- 4. Total Revenue
SELECT SUM(Sales) AS total_revenue
FROM sales_data;

-- 5. Average Order Value
SELECT AVG(Sales) AS avg_order_value
FROM sales_data;

-- =====================================
-- SALES ANALYSIS
-- =====================================

-- 6. Revenue by Category
SELECT Category,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY Category
ORDER BY revenue DESC;

-- 7. Revenue by Sub-Category
SELECT `Sub-Category`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY revenue DESC;

-- 8. Sales by Region
SELECT Region,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY Region
ORDER BY revenue DESC;

-- 9. Sales by State
SELECT State,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY State
ORDER BY revenue DESC
LIMIT 10;

-- =====================================
-- CUSTOMER ANALYSIS
-- =====================================

-- 10. Sales by Customer Segment
SELECT Segment,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY Segment
ORDER BY revenue DESC;

-- 11. Top Customers by Revenue
SELECT `Customer Name`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Customer Name`
ORDER BY revenue DESC
LIMIT 10;

-- =====================================
-- PRODUCT ANALYSIS
-- =====================================

-- 12. Top 10 Products by Revenue
SELECT `Product Name`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Product Name`
ORDER BY revenue DESC
LIMIT 10;

-- 13. Products Sold per Category
SELECT Category,
COUNT(`Product Name`) AS products_sold
FROM sales_data
GROUP BY Category;

-- =====================================
-- LOCATION ANALYSIS
-- =====================================

-- 14. Top Cities by Sales
SELECT City,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY City
ORDER BY revenue DESC
LIMIT 10;

-- =====================================
-- TIME ANALYSIS
-- =====================================

-- 15. Monthly Sales Trend
SELECT 
MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS month,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- 16. Yearly Sales Trend
SELECT 
YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS year,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY year
ORDER BY year;

-- =====================================
-- SALES PERFORMANCE
-- =====================================

-- 17. Average Sales per Category
SELECT Category,
AVG(Sales) AS avg_sales
FROM sales_data
GROUP BY Category;

-- 18. Top Sub-Categories by Revenue
SELECT `Sub-Category`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY revenue DESC
LIMIT 10;

-- 19. Highest Single Order
SELECT *
FROM sales_data
ORDER BY Sales DESC
LIMIT 1;

-- 20. Lowest Single Order
SELECT *
FROM sales_data
ORDER BY Sales ASC
LIMIT 1;