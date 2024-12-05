use mini_project;
select * from sales;

-- 1. How many unique product lines does the data have?
select count(distinct product_line) from sales;
select distinct (product_line) from sales; -- (Additional)

-- 2. What is the most common payment method?
select payment, count(*) as frequency
from sales
group by payment
order by frequency desc
limit 1;

-- 3. What is the most sold product line?
select product_line, sum(quantity) as total_quantity
from sales
group by product_line
order by total_quantity desc
limit 1;

-- 4. What month had the largest COGS?
select month_name, sum(COGS) as total_cogs
from sales
group by month_name
order by total_cogs desc
limit 1;

-- 5. What is the total revenue by month?
select month_name, sum(total) as monthly_revenue
from sales
group by month_name
order by monthly_revenue desc;


-- 6. What is the city with the largest revenue?
select city, sum(total) as city_revenue
from sales
group by city
order by city_revenue desc
limit 1;

-- 7. Fetch each product line and add a column to those product lines showing “Good” or “Bad” based on whether they are greater than average sales.
with avg_sales as(
select avg(quantity) as avg_quantity
from sales
)
select product_line, 
sum(quantity) as total_quantity,
case
when sum(quantity) > (select avg_quantity from avg_sales)
then 'good'
else 'bad'
end as performance
from sales
group by product_line;


-- 8. Which branch sold more products than the average branch?
select branch,
sum(quantity) as total_products_sold
from sales
group by branch
having total_products_sold > (select avg(branch_sales.total_products)
from (
select branch, sum(quantity) as total_products
from sales
group by branch
) branch_sales
);


-- 9. Which branch sold more products than any other branch?
SELECT 
    branch,
    SUM(quantity) AS total_products_sold
FROM sales
GROUP BY branch
ORDER BY total_products_sold DESC
LIMIT 1;


-- 10. What is the average rating of each product line?
SELECT 
    product_line,
    AVG(rating) AS average_rating
FROM sales
GROUP BY product_line
ORDER BY average_rating DESC;





