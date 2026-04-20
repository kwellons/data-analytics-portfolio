# Superstore Profitability & Discount Strategy Analysis

## Project Overview
This project analyzes retail sales data from a Superstore dataset to evaluate profitability, pricing effieciency, and the impact of discounting on overall business performance. 

## Business Objectives
This analysis aimed to answer the following questions:
- What factors drive profitability across categories and products?
- How does discounting impact sales, profit, and order behavior?
- Is the current pricing strategy effective or eroding proft?
- Where are the biggest opportunities to improve margin performance?

## Tools used
- PostgreSQL (SQL anaysis)
- DBeaver (query execution and exploration)
- Supserstore dataset (sales transaction data)

## Key Findings
### 1. Overall Profitability
- The business maintains an overall profit margin of approximately 12%
- This indicates moderate profitability but highlights sensitivity to pricing strategy
### 2. Category Performance
| Category | Profit Margin |
|--------------------------|
| Tech     | 15%           |
| Office   | 13%           |
|Furniture | 7%            |
#### Insight:
- Furniture significantly underperforms compared to other categories
- However, deeper ananlysis shows this is driven by pricing and cost structure, not category demand alone
### 3. Discount Impact on Profitability
- 0% discount: Highest and most stable profitability
- 1-20% discount: Mixed but generally sustainable performance
- 21-50% discount: Consistently negative profit
- 51% discount: Severe losses and margin erosion
Discounts above ~20% consistently lead to negative profitability across all categories
### 4. Sales and Demand Behavior
- Sales decrease as discount levels increase
- Higher discounts do not generate proportional increases in order volume
- Extreme discounting does not effectively stimulate demand
Discounting is not functioning as an effective demand driver in this dataset
### 5. System-Wide Pattern
- All categories show similar sensitivity to discount levels
- No category is iummune to profit decline at high discount tiers
The issue is systemic, not category-specific

## Key Business Insights
- Discounts above ~20% mark a profitability break point
- High discounting reduces profit without increasing sales or order volume
- Furniture is the weakest category but is impacted by the same pricing dynamics as others
- The business is prioritizing revenue generation over margin protection

## Reccomendations
### 1. Re-evaluate Discount Strategy
- Limit discounting above 20%
- Implement stricter controls on high-discount promotions
### 2. Focus on Profitability Over Volume
- Shift focus from sales growth to margin optimization
- Prioritize high-margin products and categories
### 3. Address Structural Inefficiencies in Furniture
- Reviewing pricing and cost structure
- Reduce reliance on discounting to drive sales
### 4. Implement Data-Driven Pricing Strategy
- Monitor discount impact on profit in real time
- Optimize promotions based on margin thresholds

## Conclusion
This analysis shows that the primary driver of profitabilty loss is not product category or geography, but aggressive discounting beyond a critical threshold (~20%), which consistently reduces profit without increasing demand.
Improving profitability requires a shift from volume-driven thinking to margin-aware pricing strategy.

## Skills Demonstrated
- SQL data cleaning and transformation
- Aggregation and business metric creation
- Profitability and margin analysis
- Discount impact analysis
- Business insight generation
- Data storytelling for decision-making

## Files in This Project
- 'superstore_dataset_cleaned.csv' (raw dataset)
