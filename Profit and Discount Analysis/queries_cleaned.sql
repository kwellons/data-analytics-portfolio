-- Superstore Profitability Analysis
-- Author: Keana Wellons
-- Description:
-- This analysis explores profitability, discount impact,
-- and pricing efficiency across categories.


-- Overall Business Performance
select
SUM(sales) as total_sales,
SUM(profit) as total_profit,
SUM(profit) / SUM(sales) as profit_margin
from superstore_dataset_cleaned;

-- Category Performance
select
category,
SUM(sales) as total_sales,
SUM(profit) as total_profit,
SUM(profit) / SUM(sales) as profit_margin
from superstore_dataset_cleaned
group by category
order by profit_margin desc;

-- Discount Impact Analysis
select 
case 
	when REPLACE(discount, '%', '')::numeric = 0 then '0%'
	when REPLACE(discount, '%', '')::numeric <= 20 then '1-20%'
	when REPLACE(discount, '%', '')::numeric <= 50 then '21-50%'
	else '51%+'
end as discount_range,

SUM(sales) as total_sales,
SUM(profit) as total_profit,
SUM(profit) / SUM(sales) as profit_margin,
COUNT(*) as orders
from superstore_dataset_cleaned
group by discount_range
order by discount_range;