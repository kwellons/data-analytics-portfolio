-- Which job levels experience the highest attrition?
select "JobLevel",
COUNT(*) as total_employyes,
SUM(case when "Attrition" = 'Yes' then 1 else 0 END) as attrition_count,
ROUND(100.0 * SUM(case when "Attrition" = 'Yes' then 1 else 0 END) / COUNT(*), 2) as attrition_rate
from hr_employee_attrition
group by "JobLevel"
order by attrition_rate desc;

-- Does ovetime strongly relate to attrition?
select "OverTime",
COUNT(*) as total_employees,
SUM(case when "Attrition" = 'Yes' then 1 else 0 END) as attrition_count,
ROUND(100.0 * SUM(case when "Attrition" = 'Yes' then 1 else 0 END)/COUNT(*), 2) as attrition_rate
from hr_employee_attrition
group by "OverTime"
order by attrition_rate desc;

-- Does income level relate to attrition?
select case 
	when "MonthlyIncome" < 5000 then 'Low Income'
	when "MonthlyIncome" between 5000 and 10000 then 'Mid Income'
	else 'High Income'
end as income_band,
COUNT(*) as total_employees,
SUM(case when "Attrition" = 'Yes' then 1 else 0 END) as attrition_count,
ROUND(100.0 * SUM(case when "Attrition" = 'Yes' then 1 else 0 END)/COUNT(*), 2) as attrition_rate
from hr_employee_attrition
group by income_band
order by attrition_rate desc;

-- Are early-tenure employees more likely to leave?
select case
	when "YearsAtCompany" <=2 then '0-2 Years'
	when "YearsAtCompany" <= 5 then '3-5 Years'
	when "YearsAtCompany" <= 10 then '6-10 Years'
	else '10+ Years'
end as tenure_group,
COUNT(*) as total_employees,
SUM(case when "Attrition" = 'Yes' then 1 else 0 END) as attrition_count,
ROUND(100.0 * SUM(case when "Attrition" = 'Yes'then 1 else 0 END)/COUNT(*), 2) as attrition_rate
from hr_employee_attrition
group by tenure_group
order by attrition_rate desc;

-- High-Risk Employee Segment Analysis
-- Do combined workforce risk factors ammplify attrition?
select COUNT(*) as total_employees,
SUM(case when "Attrition" = 'Yes' then 1 else 0 END) as attrition_count,
ROUND(100.0 * SUM(case when "Attrition" = 'Yes' then 1 else 0 END)/COUNT(*), 2) as attrition_rate
from hr_employee_attrition
where "YearsAtCompany" <=2 and "OverTime" = 'Yes' and "MonthlyIncome" < 5000;