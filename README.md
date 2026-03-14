# E-Commerce Sales Analysis using SQL

## Project Overview
This project analyzes an e-commerce sales dataset using SQL to extract meaningful business insights. The analysis focuses on revenue trends, customer behavior, product performance, and regional sales distribution.

The goal of this project is to demonstrate data analysis skills using SQL, including data exploration, aggregations, grouping, and KPI analysis.

## Tools Used
SQL  
MySQL  
MySQL Workbench  

## Dataset
The dataset used in this project is the Sample Superstore Dataset, which contains information about customer orders, products, sales, and geographic regions.

Key columns in the dataset include:

Order ID  
Order Date  
Customer Name  
Segment  
Region  
Category  
Sub-Category  
Product Name  
Sales  

## Project Structure

sql-sales-analysis
│
├── dataset
│   └── superstore.csv
│
├── queries
│   └── analysis.sql
│
├── outputs
│   └── query_results.csv
│
└── README.md


## SQL Analysis Performed

### Data Exploration
Checked table structure  
Viewed sample records  
Counted total orders  

### Key Performance Indicators

Total Revenue

SELECT SUM(Sales) AS total_revenue
FROM sales_data;

Average Order Value

SELECT AVG(Sales) AS avg_order_value
FROM sales_data;

Total Orders

SELECT COUNT(*) AS total_orders
FROM sales_data;


### Sales Analysis

Revenue by Category

SELECT Category,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY Category
ORDER BY revenue DESC;

Revenue by Region

SELECT Region,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY Region
ORDER BY revenue DESC;


### Product Analysis

Top Selling Products

SELECT `Product Name`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Product Name`
ORDER BY revenue DESC
LIMIT 10;


### Customer Analysis

Top Customers by Revenue

SELECT `Customer Name`,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY `Customer Name`
ORDER BY revenue DESC
LIMIT 10;


### Time Analysis

Monthly Sales Trend

SELECT 
MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS month,
SUM(Sales) AS revenue
FROM sales_data
GROUP BY MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY month;


## Key Insights

Technology category generated the highest revenue.

West region recorded the largest sales contribution.

A small number of products contributed significantly to overall revenue.

Certain months show higher sales trends, indicating seasonal demand.


## Skills Demonstrated

SQL querying  
Data aggregation and grouping  
KPI calculation  
Business data analysis  
Working with real-world datasets  


