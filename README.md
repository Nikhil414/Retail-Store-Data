# Retail-Store-Data
SQL Project

### Purposes of the Project
The primary goal of this project is to analyze the sales data from the store to gain insights into the various factors that influence sales across the different branches.
Additionally, the project will assess your proficiency in SQL, specifically focusing on querying and analyzing a single table.
### About the Data
This dataset comprises sales transactions from three branches of a retail store located in Mandalay, Yangon, and Naypyitaw. It features a total of 17 columns, which likely capture various attributes related to each transaction, such as product details, transaction dates, quantities sold, and customer information. The dataset consists of 1,000 rows, representing individual sales transactions, providing a comprehensive overview of the sales activities across the three branches.

## Analysis list
### 1. Product Analysis
Conduct an analysis of the product data to gain insights into various product lines, identifying those that are performing well and those that require improvement. This evaluation will help in understanding the strengths and weaknesses of different product categories.
### 2. Sales Analysis
This analysis focuses on understanding sales trends across products. By examining this data, we can evaluate the effectiveness of current sales strategies and determine what adjustments are necessary to enhance overall sales performance.
### 3. Customer Analysis
This analysis aims to identify distinct customer segments, their purchasing behaviors, and the profitability associated with each segment. By uncovering these insights, we can better tailor marketing efforts and improve customer engagement to drive sales growth.

## Approach Used
### Data Wrangling: 
This initial step involves inspecting the dataset to identify any NULL or missing values. Strategies are then applied to address these gaps, ensuring that missing values are effectively replaced or handled.
### Database Construction:
This phase includes the creation of a database where the cleansed data will be stored. Following this, the relevant data is inserted into the database.
### Inspection of Columns with NULL Values:
In this stage, we identify columns that contain NULL entries. During the database table creation, we enforce a NOT NULL constraint on each field to ensure that no NULL values can be stored.
Note: Already the null values are removed but still for safety sake please check if there are any null values and if you find any please act accordingly.

# Feature Engineering
1. Add a New Column: time_of_day
To gain insight into sales trends throughout the day, we will create a new column named time_of_day. This column will categorize transactions into three time segments ([Morning, Afternoon, Evening]). This enhancement will help answer the question of which part of the day sees the highest sales activity.
2. Add a New Column: day_name
Next, we will add a new column named day_name to our dataset. This column will extract and display the days of the week on which each transaction took place, formatted as follows ([Mon, Tue, Wed, Thur, Fri]). This addition will assist in analyzing which days of the week are the busiest for each branch.
3. Add a New Column: month_name
Lastly, we will create a new column called month_name that will capture the months of the year during which transactions occurred, represented as ([Jan, Feb, Mar]). This information will be useful for determining which month experiences the most sales and profit.


## General Questions
    1.How many unique cities does the data have?
    2.In which city is each branch?

## Product-Related Questions
    1.How many unique product lines does the data have?
    2.What is the most common payment method?
    3.What is the most sold product line?
    4.What month had the largest COGS?
    5.What is the total revenue by month?
    6.What is the city with the largest revenue?
    7.Fetch each product line and add a column to those product lines showing “Good” or “Bad” based on whether they are greater than average sales.
    8.Which branch sold more products than the average branch?
    9.Which branch sold more products than any other branch?
    10.What is the average rating of each product line?

## Sales-Related Questions
    1.What is the number of sales made in each time of the day per weekday?
    2.Which of the customer types brings the most revenue?
    3.Which city has the largest tax percent/VAT (Value Added Tax)?
    4.Which customer type pays the most in VAT?
## Customer-Related Questions
    1.How many unique customer types does the data have?
    2.How many unique payment methods does the data have?
    3.What is the most common customer type?
    4.Which customer type buys the most?
    5.What is the gender of most of the customers?
    6.What is the gender distribution per branch?
    7.Which time of the day do customers give the most ratings?
    8.Which time of the day do customers give the most ratings per branch?
    9.Which day of the week has the best average ratings?
    10.Which day of the week has the best average ratings per branch?
