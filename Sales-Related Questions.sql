use mini_project;
select * from sales;

-- sales_Related_Questions

-- What is the number of sales made in each time of the day per weekday?
SELECT 
    day_name,
    time_of_day,
    COUNT(*) AS sales_count
FROM sales
GROUP BY day_name, time_of_day
ORDER BY FIELD(day_name, 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'), 
         FIELD(time_of_day, 'Morning', 'Afternoon', 'Evening');
         
         
-- Which of the customer types brings the most revenue?
SELECT 
    customer_type, 
    SUM(total) as total_revenue 
FROM sales 
GROUP BY customer_type 
ORDER BY total_revenue DESC;


-- Which city has the largest tax percent/VAT (Value Added Tax)?
SELECT 
    city, 
    MAX(tax_pct) as highest_tax_rate 
FROM sales 
GROUP BY city;


-- Which customer type pays the most in VAT?
SELECT 
    customer_type,
    SUM(tax_pct) AS total_vat_paid
FROM sales
GROUP BY customer_type
ORDER BY total_vat_paid DESC
LIMIT 1;

