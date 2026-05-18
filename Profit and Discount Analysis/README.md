# Superstore Profitability & Discount Strategy Analysis | SQL

## Project Overview
This project analyzes retail sales and profitability trends using the Superstore dataset to evaluate the effectiveness of the company's discounting strategy and identify opportunities to improve margin performance. Using SQL, the analysis investigaes how discount levels influence profitability, sales behavior, and category performance across the business.

## Business Objectives
This analysis aimed to answer the following questions:
- Which product categories generate the strongest and weakest profit margins?
- How do discount levels impact profitability across the business?
- Do higher discounts effectively increase demand and order volume?
- Is the current pricing strategy maximizing revenue at the expense of profit?
- What operational and pricing adjustments could improve overall margin performance?

## Tools used
- PostgreSQL (SQL anaysis)
- DBeaver (query execution and exploration)
- Supserstore dataset (sales transaction data)

## Key Findings
### 1. Overall Profitability
- The business maintains an overall profit margin of approximately **12%**, indicating moderate profitability with strong sensitivity to pricing strategy
- Technology generated the strongest margins, while Furiniture consistently underperformed relative to other categories

| Category        | Profit Margin |
|----------------|--------------|
| Technology      | ~15%         |
| Office Supplies | ~13%         |
| Furniture       | ~7%          |
- Furniture underperformance appears to be driven more by prcing inefficiences and margin erosion than lack of sales demand

### 2. Discount Strategy Analysis
- Orders with **0% discount** produced the highest and most stable profitability
- Discount levels between **1-20%** showed mixed but generally sustainable margins
- Discounts exceeding **20%** consistently resulted in declining profitability
- Extreme discounting (**21-50%+**) produced recurring negative profit margins and substantial margin erosion

The analysis identified a clear profitability breakpoint around the **20% discount threshold** 

### 3. Demand & Sales Behavior
- Higher discount levels did not generate proportional increases in order volume or sustained sales growth
- Sales performance frequently declined alongside aggressive discounting strategies
- Extreme discounting failed to function as an effective long-term demand driver within the dataset

This suggests the business may be sacrificing profitability without achieving meaningful customer demand expansion

### 4. System-Wide Pricing Pattern
- All product categories demonstrated similar sensitivity to excessive discounting
- Margin deterioration at high discount levels was observed across the organization, not isolated to a single category

The findings indicate that pricing inefficiencies represent a broader operational issue rather than a category-specific problem

## Key Business Insights
- Discounts above approximately **20%** represent a critical profitability risk threshold
- The company appears to prioritize top-line revenue growth over sustainable margin protection
- Aggressive discounting strategies reduce profitability without delivering sufficient increases in demand or purchasing behavior
- Furniture represents the highest-risk category due to weaker margins and grater vulnerability to discount-driven losses
- The analysis highlights the importance of balacing customer acquisition strategies with long-term pricing sustainability

## Reccomendations
### 1. Re-evaluate Discount Policies
- Implement stricter controls on discounts exceeding 20%
- Establish profitability guardrails for promotional campaigns
### 2. Shift Toward Margin-Focused Decision Making
- Prioritize profitability optimization alongside revenue growth
- Increase focus on high-margin products and pricing efficiency
### 3. Improve Furniture Category Performance
- Reviwing pricing structure and product-level profitability
- Reduce dependence on discount-driven sales strategies
### 4. Implement Data-Driven Pricing Monitoring
- Track profitability impact across discount tiers in real time
- Develop pricing dashboards to support operational decision-making

## Conclusion
This analysis demonstrates that the organization’s largest profitability challenge is not product demand, but the overuse of aggressive discounting strategies that consistently erode margins beyond a critical threshold. The findings suggest that improving long-term business performance will require a transition from volume-driven pricing behavior toward a more sustainable, margin-aware strategy.

## Skills Demonstrated
- SQL data cleaning and transformation
- Exploratory and diagnostic data analysis
- Profitability and margin analysis
- Pricing and discount strategy evaluation
- Business KPI development
- Aggregation and trend analysis
- Data storytelling and insight communication
- Business-focused analytical reasoning

