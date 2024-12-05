use mini_project;
select * from sales;

-- unique cities
Select Distinct city from sales; 

-- Cities per Branch
SELECT branch, city FROM sales GROUP BY branch, city;