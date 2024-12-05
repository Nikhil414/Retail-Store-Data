/*  ***Creating Data Base***
1. CREATE DATABASE IF NOT EXISTS `mini_project`;
USE `mini_project`;

-- 1. Create Table

 CREATE TABLE `sales` (
`invoice_id` varchar(30) NOT NULL,
`branch` varchar(5) NOT NULL,
`city` varchar(30) NOT NULL,
`customer_type` varchar(30) NOT NULL,
`gender` varchar(30) NOT NULL,
`product_line` varchar(100) NOT NULL,
`unit_price` decimal(10,2) NOT NULL,
`quantity` int NOT NULL,
`tax_pct` float(6,4) NOT NULL,
`total` decimal(12,4) NOT NULL,
`date` datetime NOT NULL,
`time` time NOT NULL,
`payment` varchar(15) NOT NULL,
`cogs` decimal(10,2) NOT NULL,
`gross_margin_pct` float(11,9) DEFAULT NULL,
`gross_income` decimal(12,4) DEFAULT NULL,
`rating` float(2,1) DEFAULT NULL,
PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

-- ***Data Insertion***

### a. **Lock the table (optional)**

-- This ensures the table is not modified by other processes during the data insertion.



-- LOCK TABLES `sales` WRITE;
-- 1. UNLOCK TABLES;
-- 2. Check it

### b. **Check the data**

-- Run a query to verify the inserted data */




use mini_project;
SELECT * FROM `sales`;


-- add time_of_day column

ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);
UPDATE sales SET time_of_day = 
    CASE 
        WHEN TIME(time) BETWEEN '06:00:00' AND '11:59:59' THEN 'Morning'
        WHEN TIME(time) BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
        ELSE 'Evening'
    END;
 
 
-- Add day_name column

ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
UPDATE sales SET day_name = DAYNAME(date);


-- Add month_name column

alter table sales add column month_name varchar(10);
update sales set month_name = monthname(date)


