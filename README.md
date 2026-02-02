# Customer-Behavior-SQL-PowerBI
**Uncovering Demographic Trends, Marketing Gaps, and Spending Patterns**

## 📌 Project Overview
This project provides a comprehensive analysis of retail customer behavior using a dataset of 3,900 transactions. The goal is to identify which demographic segments drive revenue, understand seasonal trends, and evaluate the effectiveness of current marketing promotions.

I utilized a multi-tool approach:
* **SQL (PostgreSQL):** For complex data aggregation and cross-validation of business metrics.
* **Power BI & DAX:** For dynamic data modeling and creating an interactive two-page dashboard.

## 🚀 Key Insights (The "Gold Findings")
* **High-Value Segment:** **Gen Z Females** are the "premium" shoppers with the highest **Average Purchase Amount ($61.76)**, despite lower total volume.
* **The Gender Marketing Gap:** A critical finding revealed **0% engagement** with promo codes and discounts among Female customers. Current marketing strategies are failing to reach or convert this demographic.
* **Churn Risk:** **Gen Y** is the largest segment but also the most "At-Risk," with the highest number of **Annual** shoppers who need better retention triggers.
* **Inventory Mismatch:** **Outerwear** is the lowest-performing category for females across all generations, suggesting a need to shift inventory to Accessories and Clothing.

## 🛠️ Data Transformation & Modeling

### SQL Analysis
I performed extensive analysis using SQL to validate findings. Key queries included:
* Demographic revenue distribution.
* Seasonal shopping patterns (Gen Y peaks in Winter, Gen Z in Spring).
* Payment method preferences (Gen X prefers PayPal; Gen Y prefers Venmo).

* I enhanced the dataset within **Power BI using DAX (Data Analysis Expressions)** to create calculated columns and measures for deeper analysis:
* **Generational Segmentation:** Used DAX to categorize age ranges into Gen Z, Gen Y, Gen X, and Boomers.
* **Dynamic Grouping:** Created custom groupings to analyze shopping frequency and marketing responsiveness.

## 📊 Dashboard Visualization
*Screenshots of the interactive Power BI dashboard:*

### 1. Executive Overview
![Executive Overview]((https://github.com/ashfarofiqoh7-dot/Customer-Behavior-SQL-PowerBI/blob/main/Screenshot%20(86).png?raw=true)
*High-level KPIs including Total Customers, Revenue, and Category performance.*

### 2. Customer Behavioral Insights
![Behavioral Insights](screenshot_(87).png)
*Deep dive into Payment Methods, Promo Usage gaps, and Subscription vs. Spending habits.*

## 💡 Strategic Business Recommendations
1.  **Redesign Female Marketing:** Audit current promo distribution. Move from generic emails to visual-heavy campaigns on Instagram/TikTok to fix the 0% promo usage.
2.  **Retention via Venmo:** Since Gen Y (the largest group) prefers Venmo, launch a Venmo-integrated loyalty program to convert "Annual" shoppers into "Quarterly" buyers.
3.  **Optimize Seasonal Stock:** Increase inventory for **Gen Z "Spring" collections** and reduce **Outerwear** stock for female demographics.
4.  **Boomer Subscription Revamp:** Improve subscription perks for Boomers (e.g., free shipping) as current subscribers in this age group are spending less than non-subscribers.

## 📂 Repository Structure
* `/data`: Contains the raw dataset (.csv).
* `/sql_queries`: Full SQL script with aggregation and logic queries.
* `/dashboard`: Power BI file (.pbix) and high-res screenshots.
* `README.md`: Project documentation.

---
**Author:** [Ashfa Rofiqoh]
*Data Analyst Enthusiast | SQL | Power BI | Excel DAX*
