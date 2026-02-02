/*
 Project Title: Customer Shopping Behavior Analysis
 Author: [Ashfa Rofiqoh]
 Tools Used: SQL (PostgreSQL), Power BI
 Descriprion: This script performs deep-dive analysis on sutomer demographics,
              purchasing patterns, and marketing engagement.
 */


-- Age grouping and Gender average revenue distribution
SELECT
  CASE
  	WHEN "Age" BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN "Age" BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN "Age" BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN "Age" >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
 COUNT(*) as Total_Customers 
FROM shopping_behavior_updated
GROUP BY Generation
ORDER BY Total_Customers DESC;


SELECT
  CASE
  	WHEN "Age" BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN "Age" BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN "Age" BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN "Age" >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  "Gender",
  AVG("Purchase Amount (USD)") as Avg_Spent
FROM shopping_behavior_updated
GROUP BY Generation, "Gender" 
ORDER BY  Avg_Spent DESC;

-- Product Category Preferences by Demographic Segment
SELECT
"Category",
"Gender",
  CASE
  	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN Age >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  COUNT(*) as Total_Customer
FROM shopping_behavior_updated
GROUP BY Generation, "Category","Gender"
ORDER BY Total_Customer DESC;

--Seasonal Shopping Patterns across Generations
SELECT
   CASE
  	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN Age >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  Season,
  COUNT(*) AS Total_Sales
FROM shopping_behavior_updated
GROUP BY Season, Generation
ORDER BY Total_Sales DESC

--Generation Prefeences in Payment method
SELECT 
  "Payment Method",
  CASE
  	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN Age >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  COUNT (*) as Total_Customers,
  concat(
  ROUND (COUNT(*) * 100.0/SUM(COUNT(*)) OVER (),2), '%') AS Percentage
  FROM shopping_behavior_updated
  GROUP BY Generation, "Payment Method"
  ORDER BY Total_Customers DESC;

--Promo Usage Analysis by Generation and Gender
  SELECT
     "Promo Code Used",
    "Gender",
   CASE
   	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
   	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
   	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
   	WHEN Age >= 60 THEN 'Gen Boomers'
   	ELSE 'Other'
   END AS 'Generation',
    COUNT (*) as Total_Customers
  FROM shopping_behavior_updated
  WHERE "Promo Code Used" = 'Yes'
  AND "Gender" IN ('Female','Male')
  GROUP BY Generation , "Promo Code Used", "Gender"
  ORDER BY Total_Customers DESC;

--Discount Usage Analysis by Generation and Gender 
 SELECT
    "Discount Applied",
    "Gender",
   CASE
   	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
   	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
   	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
   	WHEN Age >= 60 THEN 'Gen Boomers'
   	ELSE 'Other'
   END AS 'Generation',
    COUNT (*) as Total_Customers
  FROM shopping_behavior_updated
  WHERE "Discount Applied" = 'Yes'
  GROUP BY Generation , "Discount Applied", "Gender"
  ORDER BY Total_Customers DESC;
  
--Relationship between Subscription and Spending Habits
SELECT
 CASE
  	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN Age >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  CASE
  	WHEN "Subscription Status" = 'Yes' THEN 'Subscriber (Yes)'
  	WHEN "Subscription Status" = 'No' THEN 'Subscriber (No)'
  	ELSE 'Unknown'
  END AS "Customer Status",
  COUNT(*) AS Customer_Count,
  AVG ("Purchase Amount (USD)") AS Avg_Order_Value,
  SUM (CASE WHEN "Promo Code Used" = 'Yes' Then 1 Else 0 End) AS Promo_Users
FROM shopping_behavior_updated
GROUP BY "Subscription Status", Generation ;
 
--Detecting Customer at Risk
SELECT
 "Frequency of Purchases",
   CASE
  	WHEN Age BETWEEN 13 AND 28 THEN 'Gen Z'
  	WHEN Age BETWEEN 29 AND 44 THEN 'Gen Y'
  	WHEN Age BETWEEN 45 AND 59 THEN 'Gen X'
  	WHEN Age >= 60 THEN 'Gen Boomers'
  	ELSE 'other'
  END AS Generation,
  count(*) as "Total Customer"
  FROM shopping_behavior_updated
  where "Frequency of Purchases" in ('Annually','Quarterly','Every 3 Months')
  group by "Frequency of Purchases", Generation;
  
