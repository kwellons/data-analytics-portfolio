# Superstore SQL Analysis Project

## Objective
Analyze sales and profit performance across products, categories, and time periods to support business decisions.

## Dataset
Contains Superstore order data with the following columns:
- Order ID, Order date, Ship date
- Customer informationL name, segment, state, region
- Product Information: ID, category, subcategory, name
- Financials: sales, profit, discount, shipping cost

## Business Questions
- In which quarter do sales peak?
- Which product categories are most profitable?
- What are total sales and profit?

## Data Cleaning
- Converted 'sales' and 'profit' columns from text to numeric for analysis
- Fixed date formats (DD/MM/YYYY -> DATE)
- Ensured data consistency for aggregation and time-based queries

## Analysis
- Aggregated sales and profit category and time period
- Identified trends by month and quarter
- Queries include 'SUM', 'GROUP BY', and 'EXTRACT' functions for aggregation

## Key Insights
- Sales consistently peak Q4
- Technology and Furniture categories generate the highest revenue and profit
- Total sales: $9,315,105 Total profit: $1,076,543.12

## Tools Used
- PostgreSQL
- DBeaver

## Files in This Project
- 'queries.sql' (all SQL queries used)
- 'superstore_dataset_cleaned.csv' (raw dataset)
- 'results/' (exported tables)
