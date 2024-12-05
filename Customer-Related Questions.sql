use mini_project;
Select * from sales;

-- Customer-Related Questions


-- How many unique customer types does the data have?
SELECT COUNT(DISTINCT customer_type) AS unique_customer_types FROM sales;
SELECT DISTINCT customer_type AS unique_customer_types FROM sales;  -- Additional


-- How many unique payment methods does the data have?
SELECT 
    COUNT(DISTINCT payment) AS unique_payment_methods
FROM sales;

-- What is the most common customer type?
SELECT 
    customer_type, 
    COUNT(customer_type) AS type_count
FROM sales
GROUP BY customer_type
ORDER BY type_count DESC
LIMIT 1;

-- Which customer type buys the most?
SELECT 
    customer_type, 
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY customer_type
ORDER BY total_quantity DESC
LIMIT 1;

-- What is the gender of most of the customers?
SELECT 
    gender, 
    COUNT(*) AS customer_count
FROM sales
GROUP BY gender
ORDER BY customer_count DESC
LIMIT 1;


-- What is the gender distribution per branch?
SELECT 
    branch, 
    gender, 
    COUNT(*) AS gender_count
FROM sales
GROUP BY branch, gender
ORDER BY branch, gender;


-- Which time of the day do customers give the most ratings?
SELECT 
    time_of_day, 
    COUNT(rating) AS rating_count
FROM sales
WHERE rating IS NOT NULL
GROUP BY time_of_day
ORDER BY rating_count DESC;

-- Which time of the day do customers give the most ratings per branch?
SELECT 
    branch,
    time_of_day, 
    COUNT(rating) AS rating_count
FROM sales
WHERE rating IS NOT NULL
GROUP BY branch, time_of_day
ORDER BY branch, rating_count DESC;


-- Which day of the week has the best average ratings?
SELECT 
    DAYNAME(date(time)) AS day_of_week,
    AVG(rating) AS avg_rating
FROM sales
WHERE rating IS NOT NULL
GROUP BY day_of_week
ORDER BY avg_rating DESC
LIMIT 1;


-- Which day of the week has the best average ratings per branch?
SELECT 
    branch,
    DAYNAME(date(time)) AS day_of_week,
    AVG(rating) AS avg_rating
FROM sales
WHERE rating IS NOT NULL
GROUP BY branch, day_of_week
ORDER BY branch, avg_rating DESC;


