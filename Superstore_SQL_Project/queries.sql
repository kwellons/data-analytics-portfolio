-- Superstore Sales Analysis Project

-- 1. Data Cleaning (profit)
--Numeric Columns contained currency symbols and non-numeric values
--Cleaned columns to numeric using REPLACE to handle messy data.
alter table superstore_dataset_cleaned 
alter column profit type numeric
using replace(replace(profit::text, '$', ''), ',', '')::numeric;
-- Data Cleaning (sales)
alter table superstore_dataset_cleaned 
alter column sales type numeric
using REPLACE(replace(sales::text, '$', ''), ',', '')::numeric;

-- 2. Queries / Business Questions
-- Total Sales and Profit
select
	SUM(sales) as total_sales,
	SUM(profit) as total_profit
from superstore_dataset_cleaned sdc;

-- Sales by Category
select 
	category,
	SUM(cast(sales as NUMERIC)) as total_sales
from superstore_dataset_cleaned sdc 
group by category 
order by total_sales desc;

-- Monthly Sales Trend
select
	DATE_TRUNC('month', TO_DATE(order_date, 'DD/MM/YYY')) as month,
	SUM(sales) as monthly_sales
from superstore_dataset_cleaned sdc 
group by month
order by month;

-- Quarterly Sales
select 
	EXTRACT(year from TO_DATE(order_date, 'DD/MM/YYYY')) as year,
	extract(QUARTER from TO_DATE(order_date, 'DD/MM/YYYY')) as quarter,
	SUM(sales) as total_sales
from superstore_dataset_cleaned sdc
group by
	EXTRACT(year from TO_DATE(order_date, 'DD/MM/YYYY')),
	extract(QUARTER from TO_DATE(order_date, 'DD/MM/YYYY'))
order by year, quarter;

